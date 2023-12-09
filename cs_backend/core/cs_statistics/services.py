from authorization.models import Users
from cstests.models import TestResults
from utils.constants import get_user_level


class StatisticService:
    @staticmethod
    def get_statistics(user):
        user_level = get_user_level(user)
        attempts = TestResults.objects.filter(user=user).prefetch_related("test").all()
        test_count = 0
        passed_test_count = 0
        easy_cnt = 0
        medium_cnt = 0
        hard_cnt = 0
        test_results = []
        for attempt in attempts:
            if attempt.last_attempt:
                test_count += 1
                if attempt.passed:
                    passed_test_count += 1
                    if attempt.test.complexity == 'easy':
                        easy_cnt += 1
                    elif attempt.test.complexity == 'medium':
                        medium_cnt += 1
                    else:
                        hard_cnt += 1
                test_results.append(
                    {'created_at': attempt.created_at, 'test': attempt.test.name, 'score': attempt.app_score})

        return {"total_score": user.total_score, "level": user_level, "passed_test_amount": passed_test_count,
                "total_test_amount": test_count,
                "attempt_amount": len(attempts), "easy_test_count": easy_cnt, "medium_test_count": medium_cnt,
                "hard_test_count": hard_cnt, "success_results": test_results}

    @staticmethod
    def get_top_users():
        users = Users.objects.filter(total_score__gt=0).order_by("-total_score").all()[:20]
        top_data = []
        for user in users:
            top_data.append({
                "name": user.first_name + " " + user.last_name,
                "level": get_user_level(user),
                "total_score": user.total_score
            })
        return top_data
