from cstests.email_utils import send_certificate_to_user
from cstests.models import CSTestModel, TestResults, UserAnswers, QuestionModel, VariantModel


class CService:
    @staticmethod
    def check_result(data, user):
        test_id = data['test_id']
        test = CSTestModel.objects.prefetch_related('questions', 'questions__variants').get(id=test_id)
        user_questions = {}
        for question in data['questions']:
            user_questions[question['id']] = {}
            for variant in question['variants']:
                user_questions[question['id']][variant['id']] = variant
        score = 0
        questions = test.questions.all()
        user_answers = []
        for question in questions:
            variants = question.variants.values()
            is_correct = False
            if question.id in user_questions:
                user_variants = user_questions[question.id]
                is_correct = True
                user_answer = []
                for variant in variants:
                    user_variant = user_variants[variant['id']]
                    if question.type == 'text':
                        if user_variant['answer'] != variant['right_answer']:
                            is_correct = False
                        variant['answer'] = user_variant['answer']
                        user_answer.append(user_variant['answer'])
                    else:
                        if user_variant['checked'] != variant['is_right']:
                            is_correct = False
                        variant['checked'] = user_variant['checked']
                        if user_variant['checked']:
                            user_answer.append(str(user_variant['id']))
                user_answers.append([question, ",".join(user_answer), is_correct])
                if is_correct:
                    score += 1
            question.is_correct = is_correct
            question.final_variants = variants
        correct_amount = score
        score = 100 * score / len(questions)
        passed = test.required_score <= score
        app_score = 0
        if passed:
            if test.complexity == 'easy':
                app_score = 25
            elif test.complexity == 'medium':
                app_score = 50
            else:
                app_score = 100
        last_result = TestResults.objects.filter(user_id=user.id, test_id=test.id, last_attempt=True).first()
        previous_success = False
        if last_result:
            user.total_score -= last_result.app_score
            previous_success = last_result.passed
            last_result.last_attempt = False
            last_result.save()
        if passed:
            user.total_score += app_score
            if test.id == 1:
                user.initial_passed = True
        user.save()
        test_result = TestResults.objects.create(passed=passed, last_attempt=True, score=int(score), test=test,
                                                 user=user, app_score=app_score)
        created_user_answer = []
        for user_answer in user_answers:
            created_user_answer.append(
                UserAnswers(test_result=test_result, question=user_answer[0], answer=user_answer[1],
                            is_correct=user_answer[2]))
        UserAnswers.objects.bulk_create(created_user_answer)
        try:
            if not previous_success:
                send_certificate_to_user(user, test)
        except:
            pass
        return {"questions": test.questions, "passed": passed, "correct_amount": correct_amount,
                "top_percent": 0, "score": score, "total_amount": len(questions)}


class ParseTestService:
    @staticmethod
    def parse_test(user, course):
        text = course.generated_tests
        test = CSTestModel.objects.create(name=course.name, topic='generated', description=course.description,
                                          user=user)
        questions = []
        # QuestionModel.objects.filter(tests__id=6).all().delete()
        cur_question = None
        is_question = True
        variants = []
        is_answer = False
        variants_dict = {}
        right_letter = 'a)'
        text = text.replace('\r', '')
        for line in text.split('\n'):
            if line == "":
                is_answer = not is_answer
                if not is_answer:
                    for letter, title in variants_dict.items():
                        variants.append(
                            VariantModel(title=title, question=cur_question, is_right=letter == right_letter))
                    variants_dict.clear()
                    right_letter = 'a)'
                    is_question = True
            else:
                if is_question:
                    cur_question = QuestionModel.objects.create(question=line, user=user)
                    is_question = False
                    questions.append(cur_question)
                else:
                    if is_answer:
                        right_letter = line.split()[2]
                    else:
                        letter = line.split()[0]
                        variants_dict[letter] = line
        if not is_answer:
            for letter, title in variants_dict.items():
                variants.append(
                    VariantModel(title=title, question=cur_question, is_right=letter == right_letter))
            variants_dict.clear()
        VariantModel.objects.bulk_create(variants)
        test.questions.set(questions)
        return test
