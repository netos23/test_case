from django.db import models
from django.db.models import ForeignKey
from django.utils.timezone import now

from authorization.models import Users
from course.models import Course


class OrderModel(models.Model):
    STATUS_TYPE_CHOICES = [
        (0, "Created"),
        (1, "Wait for payment"),
        (2, "Payed")
    ]
    user = models.ForeignKey(Users, on_delete=models.CASCADE, verbose_name="Пользователь")
    created_at = models.DateTimeField(default=now, verbose_name="Дата создания")
    price = models.FloatField(verbose_name="Цена")
    status = models.IntegerField(default=0, choices=STATUS_TYPE_CHOICES, verbose_name="Статус заказа")
    course = ForeignKey(Course, on_delete=models.CASCADE, related_name='order', null=True, verbose_name="Курс")

    class Meta:
        ordering = ['-id']
        verbose_name = "Заказ"
        verbose_name_plural = "Заказы"
