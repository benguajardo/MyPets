# Generated by Django 3.1.2 on 2023-06-18 17:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='carrusel',
            field=models.BooleanField(blank=True, default=False),
        ),
    ]