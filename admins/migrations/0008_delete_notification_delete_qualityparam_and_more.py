# Generated by Django 4.1.7 on 2023-03-28 05:19

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0007_admin_notification_qualityparam_transactionhistory'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Notification',
        ),
        migrations.DeleteModel(
            name='Qualityparam',
        ),
        migrations.DeleteModel(
            name='Transactionhistory',
        ),
    ]