from cstests.models import CSTestModel, TestResults, UserAnswers


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
                        variant['user_answer'] = user_variant['answer']
                        user_answer.append(user_variant['answer'])
                    else:
                        if user_variant['checked'] != variant['is_right']:
                            is_correct = False
                        variant['user_check'] = user_variant['checked']
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
        if test.complexity == 'easy':
            app_score = 25
        elif test.complexity == 'medium':
            app_score = 50
        else:
            app_score = 100
        last_result = TestResults.objects.filter(user_id=user.id, test_id=test.id, last_attempt=True).first()
        if last_result:
            user.total_score -= last_result.app_score
        user.total_score += app_score
        user.save()
        last_result.last_attempt = False
        last_result.save()
        test_result = TestResults.objects.create(passed=passed, last_attempt=True, score=int(score), test=test,
                                                 user=user, app_score=app_score)
        created_user_answer = []
        for user_answer in user_answers:
            created_user_answer.append(
                UserAnswers(test_result=test_result, question=user_answer[0], answer=user_answer[1],
                            is_correct=user_answer[2]))
        UserAnswers.objects.bulk_create(created_user_answer)

        return {"questions": test.questions, "passed": passed, "correct_amount": correct_amount,
                "top_percent": 0, "score": score, "total_amount": len(questions)}
