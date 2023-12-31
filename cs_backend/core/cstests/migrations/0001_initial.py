# Generated by Django 3.2.5 on 2023-12-08 07:15

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='QuestionModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(default=django.utils.timezone.now)),
                ('question', models.CharField(max_length=255)),
                ('picture', models.URLField(blank=True, null=True)),
                ('sort_number', models.IntegerField()),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ['sort_number', 'id'],
            },
        ),
        migrations.CreateModel(
            name='VariantModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('picture', models.URLField(blank=True, null=True)),
                ('is_right', models.BooleanField(default=False)),
                ('question', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='variants', to='cstests.questionmodel')),
            ],
        ),
        migrations.CreateModel(
            name='CSTestModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('description', models.CharField(max_length=1024)),
                ('created_at', models.DateTimeField(default=django.utils.timezone.now)),
                ('required_score', models.IntegerField(default=0)),
                ('questions', models.ManyToManyField(related_name='tests', to='cstests.QuestionModel')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
