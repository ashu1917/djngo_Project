# Generated by Django 4.1.7 on 2023-03-30 11:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admins', '0028_remove_product_roleid'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='roleid',
            field=models.CharField(default=None, max_length=250, null=True),
        ),
    ]
