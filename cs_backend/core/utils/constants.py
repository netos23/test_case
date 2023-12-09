from django.utils.translation import gettext_lazy as _

from authorization.models import UserLevel

FOR_AGES = [
    ('6-12+', _('6-12+')),
    ('13-16+', _('13-16+')),
    ('16-90+', _('16-90+')),
]


def get_user_level(user):
    levels = UserLevel.objects.all()
    for level in levels:
        if user.total_score >= level.score_from and user.total_score < level.score_to:
            return level.name
    return "Начинающий"
