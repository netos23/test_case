# Generated by Django 3.2.5 on 2023-12-09 16:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cstests', '0010_alter_variantmodel_is_right'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cstestmodel',
            name='description',
            field=models.TextField(verbose_name='Описание'),
        ),
    ]
