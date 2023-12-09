from cstests.models import CSTestModel


class CService:
    @staticmethod
    def check_result(data):
        test_id = data['test_id']
        test = CSTestModel.objects.prefetch_related('questions', 'questions__variants').get(id=test_id)
        user_questions = {}
        for question in data['questions']:
            user_questions[question['id']] = {}
            for variant in question['variants']:
                user_questions[question['id']][variant['id']] = variant
        score = 0
        questions = test.questions.all()
        for question in questions:
            user_variants = user_questions[question.id]
            is_correct = True
            variants = question.variants.values()
            for variant in variants:
                user_variant = user_variants[variant['id']]
                if question.type == 'text':
                    if user_variant['answer'] != variant['right_answer']:
                        is_correct = False
                    variant['user_answer'] = user_variant['answer']
                else:
                    if user_variant['checked'] != variant['is_right']:
                        is_correct = False
                    variant['user_check'] = user_variant['checked']
            question.is_correct = is_correct
            question.final_variants = variants
            if is_correct:
                score += 1
        return {"questions": test.questions, "passed": test.required_score <= score, "correct_amount": score,
                "top_percent": 0, "score": 100 * score / len(questions)}
