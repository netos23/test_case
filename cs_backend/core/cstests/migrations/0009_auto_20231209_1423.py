# Generated by Django 3.2.5 on 2023-12-09 14:23

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('cstests', '0008_auto_20231209_1403'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='cstestmodel',
            options={'verbose_name': 'Тест', 'verbose_name_plural': 'Тесты'},
        ),
        migrations.AlterModelOptions(
            name='questionmodel',
            options={'ordering': ['sort_number', 'id'], 'verbose_name': 'Вопрос', 'verbose_name_plural': 'Вопросы'},
        ),
        migrations.AlterModelOptions(
            name='testresults',
            options={'ordering': ['-id'], 'verbose_name': 'Результаты теста', 'verbose_name_plural': 'Результаты тестов'},
        ),
        migrations.AlterModelOptions(
            name='variantmodel',
            options={'verbose_name': 'Вариант ответв', 'verbose_name_plural': 'Варианты ответа'},
        ),
        migrations.AlterField(
            model_name='cstestmodel',
            name='created_at',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Дата создания'),
        ),
        migrations.AlterField(
            model_name='cstestmodel',
            name='description',
            field=models.CharField(max_length=1024, verbose_name='Описание'),
        ),
        migrations.AlterField(
            model_name='cstestmodel',
            name='name',
            field=models.CharField(max_length=255, verbose_name='Название'),
        ),
        migrations.AlterField(
            model_name='cstestmodel',
            name='picture',
            field=models.URLField(blank=True, null=True, verbose_name='Картинка'),
        ),
        migrations.AlterField(
            model_name='cstestmodel',
            name='questions',
            field=models.ManyToManyField(related_name='tests', to='cstests.QuestionModel', verbose_name='Вопросы'),
        ),
        migrations.AlterField(
            model_name='cstestmodel',
            name='required_score',
            field=models.IntegerField(default=0, verbose_name='Балл прохождения'),
        ),
        migrations.AlterField(
            model_name='cstestmodel',
            name='topic',
            field=models.CharField(max_length=255, verbose_name='Тема'),
        ),
        migrations.AlterField(
            model_name='cstestmodel',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Пользователь'),
        ),
        migrations.AlterField(
            model_name='questionmodel',
            name='created_at',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Дата создания'),
        ),
        migrations.AlterField(
            model_name='questionmodel',
            name='explain_answer',
            field=models.CharField(default='', max_length=1024, verbose_name='Подсказка'),
        ),
        migrations.AlterField(
            model_name='questionmodel',
            name='picture',
            field=models.URLField(blank=True, null=True, verbose_name='Изображение'),
        ),
        migrations.AlterField(
            model_name='questionmodel',
            name='question',
            field=models.CharField(max_length=255, verbose_name='Вопрос'),
        ),
        migrations.AlterField(
            model_name='questionmodel',
            name='sort_number',
            field=models.IntegerField(default=0, verbose_name='Порядок в тесте'),
        ),
        migrations.AlterField(
            model_name='questionmodel',
            name='type',
            field=models.CharField(choices=[('single_checked', 'Один верный'), ('multiple_checked', 'Много верных вариантов'), ('text', 'Текстовый ответ')], default='single_checked', max_length=256, verbose_name='Тип вопроса'),
        ),
        migrations.AlterField(
            model_name='questionmodel',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Пользователь'),
        ),
        migrations.AlterField(
            model_name='testresults',
            name='app_score',
            field=models.IntegerField(default=0, verbose_name='Баллов за тест'),
        ),
        migrations.AlterField(
            model_name='testresults',
            name='score',
            field=models.IntegerField(verbose_name='Итоговый результат'),
        ),
        migrations.AlterField(
            model_name='testresults',
            name='test',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='cstests.cstestmodel', verbose_name='Тест'),
        ),
        migrations.AlterField(
            model_name='testresults',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Пользователь'),
        ),
        migrations.AlterField(
            model_name='variantmodel',
            name='is_right',
            field=models.BooleanField(blank=True, null=True, verbose_name='Является правильным'),
        ),
        migrations.AlterField(
            model_name='variantmodel',
            name='picture',
            field=models.URLField(blank=True, null=True, verbose_name='Изображение'),
        ),
        migrations.AlterField(
            model_name='variantmodel',
            name='question',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='variants', to='cstests.questionmodel', verbose_name='Вопрос'),
        ),
        migrations.AlterField(
            model_name='variantmodel',
            name='right_answer',
            field=models.CharField(blank=True, max_length=255, null=True, verbose_name='Правильный ответ'),
        ),
        migrations.AlterField(
            model_name='variantmodel',
            name='title',
            field=models.CharField(max_length=255, verbose_name='Название'),
        ),
    ]
