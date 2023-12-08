import random


def auth_code_generator(digits=3):
    return str(random.randint(10 ** (digits - 1) + 1, 10 ** digits - 1))
