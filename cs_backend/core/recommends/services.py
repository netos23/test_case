from banners.models import SourceModel
from cstests.models import UserAnswers, TestResults
from utils.constants import age_profi_filtering
from utils.elastic_client import ElasticClient

from utils.morph_utils import WordMorph


class RecommendService:
    @staticmethod
    def get_recommends(user):
        sources = SourceModel.objects.all()
        sources = age_profi_filtering(sources, user)
        title = 'Вам будет интересно:'
        client = ElasticClient(index='sources')
        last_test = TestResults.objects.filter(user=user, last_attempt=True).first()
        if last_test:
            user_answers = UserAnswers.objects.filter(test_result=last_test, is_correct=False).values_list(
                'question__question', flat=True)[
                           :10]
            only_nouns = []
            morph = WordMorph()
            for user_answer in user_answers:
                if len(only_nouns) > 10:
                    break
                for word in user_answer.split():
                    p = morph.parse(word)[0]
                    if p.tag.POS == 'NOUN':
                        only_nouns.append(p.normal_form)
            if len(only_nouns):
                search = " ".join(only_nouns)
                result_ids = client.search_sources(search, operator='or')
                if len(result_ids) > 0:
                    sources = sources.filter(pk__in=result_ids)
                    title = 'Вам стоит обратить внимание на эти темы:'
        return {"title": title, "sources": sources[:10]}
