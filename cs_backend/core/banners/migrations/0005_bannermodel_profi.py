# Generated by Django 3.2.5 on 2023-12-09 16:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('banners', '0004_auto_20231209_1423'),
    ]

    operations = [
        migrations.AddField(
            model_name='bannermodel',
            name='profi',
            field=models.BooleanField(default=False, verbose_name='Профи'),
        ),
    ]
