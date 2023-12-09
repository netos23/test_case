from django.core.cache import cache
from django.db.models import Q
from django.utils.translation import gettext_lazy as _

from authorization.models import UserLevel

FOR_AGES = [
    ('6-12+', _('6-12+')),
    ('13-16+', _('13-16+')),
    ('16-90+', _('16-90+')),
]


def get_cache_user_level():
    user_levels = cache.get('user_levels')
    if not user_levels:
        user_levels = {ul for ul in UserLevel.objects.values_list('score_from', 'score_to', 'level')}
        cache.set('user_levels', user_levels, 3600)
    return user_levels


def get_user_level(user):
    levels = get_cache_user_level()
    for level in levels:
        if level[0] <= user.total_score < level[1]:
            return level[2]
    return "Начинающий"


def age_profi_filtering(queryset, user):
    if user.id is None:
        return queryset
    if not user.profi:
        queryset = queryset.filter(profi=False)
    if not user.age6_12:
        queryset = queryset.filter(~Q(for_age='6-12+'))
    if not user.age13_16:
        queryset = queryset.filter(~Q(for_age='13-16+'))
    if not user.age16_90:
        queryset = queryset.filter(~Q(for_age='16-90+'))
    return queryset
