# Generated by Django 3.1.2 on 2023-06-20 23:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0004_auto_20230620_1658'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='user',
            options={},
        ),
        migrations.AlterModelManagers(
            name='user',
            managers=[
            ],
        ),
        migrations.RemoveField(
            model_name='user',
            name='date_joined',
        ),
        migrations.RemoveField(
            model_name='user',
            name='direccion',
        ),
        migrations.RemoveField(
            model_name='user',
            name='first_name',
        ),
        migrations.RemoveField(
            model_name='user',
            name='groups',
        ),
        migrations.RemoveField(
            model_name='user',
            name='is_active',
        ),
        migrations.RemoveField(
            model_name='user',
            name='is_staff',
        ),
        migrations.RemoveField(
            model_name='user',
            name='is_superuser',
        ),
        migrations.RemoveField(
            model_name='user',
            name='last_name',
        ),
        migrations.RemoveField(
            model_name='user',
            name='nombre',
        ),
        migrations.RemoveField(
            model_name='user',
            name='user_permissions',
        ),
        migrations.AddField(
            model_name='user',
            name='apellidos',
            field=models.CharField(blank=True, max_length=200, null=True, verbose_name='Apellidos'),
        ),
        migrations.AddField(
            model_name='user',
            name='nombres',
            field=models.CharField(blank=True, max_length=200, null=True, verbose_name='Nombres'),
        ),
        migrations.AddField(
            model_name='user',
            name='user_activo',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='user',
            name='user_administrador',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='user',
            name='email',
            field=models.EmailField(max_length=254, unique=True, verbose_name='Correo electrónico'),
        ),
        migrations.AlterField(
            model_name='user',
            name='imagen',
            field=models.ImageField(max_length=200, upload_to='perfil/', verbose_name='Foto de perfil'),
        ),
        migrations.AlterField(
            model_name='user',
            name='username',
            field=models.CharField(max_length=100, unique=True, verbose_name='Nombre de usuario'),
        ),
    ]
