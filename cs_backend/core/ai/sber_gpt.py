from gigachat import GigaChatSyncClient
from gigachat.models import Chat, Messages, MessagesRole

from .base import BaseAIRequestClient
from core import settings


class SberGpt(BaseAIRequestClient):
    gpt_client: GigaChatSyncClient

    def __init__(self, base_text: str, questions_count: int, question_type: str, answers_min_cnt: int):
        super().__init__(base_text, questions_count, question_type, answers_min_cnt)
        self.gpt_client = GigaChatSyncClient(
            credentials=settings.GIGACHAT_SECRET,
            scope=settings.GIGACHAT_SCOPE,
            verify_ssl_certs=False
        )
        self._messages = Chat(
            messages=[
                Messages(
                    role=MessagesRole.SYSTEM,
                    content=self._system_prompt
                ),
                Messages(
                    role=MessagesRole.USER,
                    content=self._user_prompt
                )
            ],
            temperature=0.7,
            max_tokens=1000
        )

    def get_response(self) -> list:
        response = self.gpt_client.chat(self._messages)
        return [response.choices[0].message.content]
