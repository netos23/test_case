from django.core.management.base import BaseCommand

from banners.models import SourceModel
from cstests.models import CSTestModel
from utils.elastic_client import ElasticClient


class Command(BaseCommand):
    help = 'Parse elastic'

    def handle(self, *args, **kwargs):
        self.add_source_search()
        self.add_test_search()

    def add_source_search(self):
        client = ElasticClient(index='sources')
        client.indices.delete(index=client.index, ignore=[400, 404])
        client.create(client.index)
        send_sources = []
        sources = SourceModel.objects.values()
        for index, src in enumerate(sources):
            send_sources.append({"index": {"_index": client.index, "_id": index}})
            send_sources.append(src)
        client.bulk(send_sources)

    def add_test_search(self):
        client = ElasticClient(index='tests')
        client.indices.delete(index=client.index, ignore=[400, 404])
        client.create(client.index)
        send_sources = []
        tests = CSTestModel.objects.values()
        for index, src in enumerate(tests):
            send_sources.append({"index": {"_index": client.index, "_id": index}})
            send_sources.append(src)
        client.bulk(send_sources)
