# Generated by Django 3.1.2 on 2023-06-18 18:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_producto_carrusel'),
    ]

    operations = [
        migrations.AddField(
            model_name='marcaproducto',
            name='imagen',
            field=models.ImageField(blank=True, null=True, upload_to=''),
        ),
    ]
