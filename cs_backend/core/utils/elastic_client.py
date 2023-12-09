import jmespath
from django.conf import settings
from elasticsearch import Elasticsearch


class ElasticClient:
    def __init__(self, index=None, **kwargs):
        hosts = settings.ELASTIC_URL.rstrip("/")
        self.__index = index or settings.ELASTIC_INDEX
        self.__elastic = Elasticsearch(
            hosts=hosts, verify_certs=False,
            http_auth=("elastic", settings.ELASTIC_PASSWORD),
            **kwargs
        )

    def put_mapping(self, body, index=None, doc_type=None, params=None, headers=None):
        index = index or self.index
        return self.__elastic.indices.put_mapping(
            body, index=index, doc_type=doc_type, params=params, headers=headers
        )

    def create(self, index, body=None, params=None, headers=None):
        index = index or self.index
        return self.__elastic.indices.create(index=index, body=body, params=params, headers=headers)

    def put_settings(self, body, index):
        self.__elastic.indices.close(index=index)
        self.__elastic.indices.put_settings(index=index, body=body)
        self.__elastic.indices.open(index=index)

    @property
    def index(self):
        return self.__index

    @property
    def indices(self):
        return self.__elastic.indices

    def search_sources(self, query: str, size=1000, operator="and") -> list:
        data = {
            "query": {
                "bool": {
                    "should": [
                        {
                            "multi_match": {
                                "query": query,
                                "fields": [
                                    "title^2",
                                    "topic^3"
                                ],
                                "operator": operator,
                                "fuzziness": "AUTO"
                            }
                        }
                    ]
                }
            }
        }

        response = self.__elastic.search(body=data, index=self.index, size=size)
        result = jmespath.search("hits.hits[*]._source", response)
        return [r['id'] for r in result]

    def search_tests(self, query: str, size=1000) -> list:
        data = {
            "query": {
                "bool": {
                    "should": [
                        {
                            "multi_match": {
                                "query": query,
                                "fields": [
                                    "name^2",
                                    "topic^3",
                                    "description^1"
                                ],
                                "operator": "and",
                                "fuzziness": "AUTO"
                            }
                        }
                    ]
                }
            }
        }

        response = self.__elastic.search(body=data, index=self.index, size=size)
        result = jmespath.search("hits.hits[*]._source", response)
        return [r['id'] for r in result]

    def bulk(self, body, index=None, doc_type=None, params=None, headers=None):
        index = index or self.index
        return self.__elastic.bulk(
            body,
            index=index,
            doc_type=doc_type,
            params=params,
            headers=headers,
            refresh=True,
        )
