from typing import Collection, Optional, Iterable
from abc import ABCMeta, abstractmethod


class BaseAIRequestClient(metaclass=ABCMeta):
    __system_prompt_template = "Ты генерируешь вопросы по тексту."
    __system_prompt_answer_cnt = "На каждый вопрос сделай не менее {answer_min_cnt} вариантов ответа"
    __user_prompt_template = "Запомни текст:" \
                             " {base_text}" \
                             " Сделай на его основе тест из {questions_count} вопросов " \
                             "Формат вопросов {question_type}" \
                             " Используй формулировки из исходного текста " \
                             "В конце каждого вопроса укажи, какой ответ правильный."

    def __init__(self, base_text: str, questions_count: int, question_type: str, answers_min_cnt: int):
        self.__base_text = base_text
        self.__questions_count = questions_count
        self.__question_type = question_type
        self.__answers_min_cnt = answers_min_cnt

    @property
    def _system_prompt(self) -> str:
        prompt_parts = [self.__system_prompt_template]
        if self.__answers_min_cnt:
            prompt_parts.append(
                self.__system_prompt_answer_cnt.format(answer_min_cnt=self.__answers_min_cnt)
            )
        return "\n".join(prompt_parts)

    @property
    def _user_prompt(self) -> str:
        prompt_parts = [self.__user_prompt_template.format(base_text=self.__base_text,
                                                           questions_count=self.__questions_count,
                                                           question_type=self.__question_type)]
        return "\n".join(prompt_parts)

    @abstractmethod
    def get_response(self) -> Iterable:
        raise NotImplementedError
