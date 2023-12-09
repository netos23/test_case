import pymorphy3


class WordMorph(object):
    def __new__(cls, ):
        if not hasattr(cls, 'instance'):
            cls.instance = pymorphy3.MorphAnalyzer(lang='ru')
        return cls.instance
