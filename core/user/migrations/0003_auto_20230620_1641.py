# Generated by Django 3.1.2 on 2023-06-20 20:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0002_auto_20230620_1639'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='apellido',
        ),
        migrations.AlterField(
            model_name='user',
            name='nombre',
            field=models.CharField(max_length=100),
        ),
    ]
