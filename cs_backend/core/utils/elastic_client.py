import jmespath
from django.conf import settings
from elasticsearch import Elasticsearch, Transport


class ElasticClient:
    def __init__(self, transport_class=Transport, **kwargs):
        hosts = settings.ELASTIC_URL.rstrip("/")
        self.__index = settings.ELASTIC_INDEX
        self.__elastic = Elasticsearch(
            hosts=hosts,
            transport_class=transport_class,
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
        return self.__elastic.indices.create(
            index, body=body, params=params, headers=headers
        )

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

    def multi_match(self, query: str, size=1000) -> list:
        data = {
            "query": {
                "bool": {
                    "should": [
                        {
                            "multi_match": {
                                "query": query,
                                "fields": [
                                    "name^2",
                                    "categories^3",
                                    "params_str",
                                ],
                                "operator": "and",
                                "fuzziness": "AUTO",
                                "boost": 2,
                            }
                        },
                        {
                            "multi_match": {
                                "query": query,
                                "fields": [
                                    "name^2",
                                    "categories^3",
                                    "params_str",
                                ],
                                "operator": "and",
                                "fuzziness": "AUTO",
                                "analyzer": "latin",
                            }
                        },
                    ]
                }
            }
        }

        response = self.__elastic.search(body=data, index=self.index, size=size)
        return jmespath.search("hits.hits[*]._source", response)

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
