# Generated by Django 3.2.5 on 2023-12-09 18:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('authorization', '0007_users_initial_passed'),
    ]

    operations = [
        migrations.AlterField(
            model_name='users',
            name='age16_90',
            field=models.BooleanField(default=True, verbose_name='Категория 16-90'),
        ),
    ]
