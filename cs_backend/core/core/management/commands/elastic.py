import logging
import os
import re

from django.conf import settings

from django.core.management.base import BaseCommand
from django.utils import timezone

from banners.models import SourceModel
from utils.elastic_client import ElasticClient


class ElasticParser(BaseCommand):
    help = 'Parse elastic'

    def handle(self, *args, **kwargs):
        client = ElasticClient()
        client.indices.delete(index=client.index, ignore=[400, 404])
        client.create(client.index)
        send_sources = []
        sources = SourceModel.objects.values()
        for index, src in enumerate(sources):
            send_sources.append({"index": {"_index": settings.APPLICATION_NAME, "_id": index}})
            send_sources.append(src)
        client.bulk(send_sources)
