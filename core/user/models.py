from django.contrib.auth.models import AbstractUser, AbstractBaseUser, BaseUserManager
from django.db import models

# class User(AbstractUser):
#     nombre = models.CharField(max_length=100, blank=False)
#     direccion = models.CharField(max_length=150, blank=False)
#     suscrito = models.BooleanField(default=False, blank=True)
#     imagen = models.ImageField(null=True,blank=True)
#     def __str__(self):
#         return self.nombre
class UserManager(BaseUserManager):
    def create_user(self,email,username,nombres,password = None):
        if not email:
            raise ValueError('El usuario debe tener un correo electrónico!')
        user = self.model(
            username = username,
            email = self.normalize_email(email),
            nombres = nombres
        )
        user.set_password(password)
        user.save()
        return user
    
    def create_superuser(self,email,username,nombres,password):
        user = self.create_user(
            email,
            username = username,
            nombres = nombres,
            password = password
        )
        user.user_administrador = True
        user.save()
        return user

class User(AbstractBaseUser):
    username = models.CharField('Nombre de usuario',unique= True, max_length=100)
    nombres = models.CharField('Nombres', max_length=200,blank = True,null = True)
    apellidos = models.CharField('Apellidos', max_length=200,blank = True,null = True)
    email = models.EmailField('Correo electrónico', max_length=254, unique=True)
    imagen = models.ImageField('Foto de perfil', upload_to = 'perfil/',height_field=None,max_length=200)
    suscrito = models.BooleanField(default=False, blank=True)

    user_activo = models.BooleanField(default = True)
    user_administrador = models.BooleanField(default = False)
    objects = UserManager()
    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email','nombres']

    def __str__(self):
        return f'Usuario {self.username}'

    def has_perm(self,perm,obj = None):
        return True
    
    def has_module_perms(self,app,label):
        return True
    
    @property
    def is_staff(self):
        return self.user_administrador