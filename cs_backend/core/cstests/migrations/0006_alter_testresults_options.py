# Generated by Django 3.2.5 on 2023-12-09 11:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cstests', '0005_testresults_useranswers'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='testresults',
            options={'ordering': ['-id']},
        ),
    ]
