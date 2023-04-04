# Generated by Django 4.1.7 on 2023-03-28 05:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0020_quaitytestuser'),
    ]

    operations = [
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('userid', models.CharField(default=None, max_length=250, null=True)),
                ('cropid', models.CharField(default=None, max_length=250, null=True)),
                ('price', models.CharField(default=None, max_length=250, null=True)),
                ('quality', models.CharField(default=None, max_length=250, null=True)),
                ('location', models.CharField(default=None, max_length=250, null=True)),
                ('datetime', models.CharField(default=None, max_length=250, null=True)),
                ('status', models.CharField(default=None, max_length=250, null=True)),
            ],
            options={
                'db_table': 'product',
            },
        ),
    ]
