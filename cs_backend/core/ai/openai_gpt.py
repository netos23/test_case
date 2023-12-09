# from typing import Optional, Collection
# from openai import OpenAI
# import httpx
# from httpx_socks import SyncProxyTransport
# from .base import BaseAIRequestClient
# from core import settings
#
#
# class OpenAiGpt(BaseAIRequestClient):
#     _openai_client: OpenAI
#     _OPENAI_ORGANIZATION = settings.OPENAI_ORGANIZATION
#     _OPENAI_SECRET = settings.OPENAI_SECRET
#     _GPT_MODEL = "gpt-3.5-turbo"
#
#     def __init__(self, style: Optional[str], words_blacklist: Optional[Collection[str]],
#                  words_whitelist: Optional[Collection[str]], base_description: str,
#                  ta_name: str, ta_age: str, ta_description: str,
#                  ta_pricing: str, places: Optional[Collection[str]],
#                  is_laconic=False):
#         super().__init__(style, words_blacklist,
#                          words_whitelist, base_description,
#                          ta_name, ta_age, ta_description,
#                          ta_pricing, places, is_laconic)
#         transport = SyncProxyTransport.from_url(settings.PROXY_URL)
#         client = httpx.Client(transport=transport)
#         self._openai_client = OpenAI(
#             organization=self._OPENAI_ORGANIZATION,
#             api_key=self._OPENAI_SECRET,
#             http_client=client
#         )
#         self._messages = [
#             {"role": "system", "content": self._system_prompt},
#             {"role": "user", "content": self._user_prompt}
#         ]
#
#     def get_response(self) -> iter:
#         stream = self._openai_client.chat.completions.create(
#             model=self._GPT_MODEL,
#             messages=self._messages,
#             stream=True
#         )
#         for chunk in stream:
#             if val := chunk.choices[0].delta.content:
#                 yield val
