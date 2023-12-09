# Generated by Django 3.2.5 on 2023-12-09 07:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('banners', '0003_bannermodel_for_age'),
        ('cstests', '0004_alter_variantmodel_is_right'),
        ('course', '0002_course_certificate_template'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='price',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='course',
            name='sources',
            field=models.ManyToManyField(blank=True, to='banners.SourceModel'),
        ),
        migrations.AlterField(
            model_name='course',
            name='test',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='cstests.cstestmodel'),
        ),
    ]