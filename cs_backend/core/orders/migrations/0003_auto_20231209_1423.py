# Generated by Django 3.2.5 on 2023-12-09 14:23

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0004_auto_20231209_1423'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('orders', '0002_auto_20231209_1053'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='ordermodel',
            options={'ordering': ['-id'], 'verbose_name': 'Заказ', 'verbose_name_plural': 'Заказы'},
        ),
        migrations.AlterField(
            model_name='ordermodel',
            name='course',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='order', to='course.course', verbose_name='Курс'),
        ),
        migrations.AlterField(
            model_name='ordermodel',
            name='created_at',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Дата создания'),
        ),
        migrations.AlterField(
            model_name='ordermodel',
            name='price',
            field=models.FloatField(verbose_name='Цена'),
        ),
        migrations.AlterField(
            model_name='ordermodel',
            name='status',
            field=models.IntegerField(choices=[(0, 'Created'), (1, 'Wait for payment'), (2, 'Payed')], default=0, verbose_name='Статус заказа'),
        ),
        migrations.AlterField(
            model_name='ordermodel',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Пользователь'),
        ),
    ]
