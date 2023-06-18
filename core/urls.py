from django.urls import path, include
from .views import *
from rest_framework import routers

router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('tipoproductos', TipoProductoViewset)
router.register('marcaproductos', MarcaViewset)
router.register('mascotaproductos', MascotaViewset)

urlpatterns = [
    # API
    path('',index, name="index"),
    path('shop',shop, name="shop"),
    
    path('base/',base, name="base"),
    path('single/<int:id>/',single, name="single"),
    path('contact/',contact, name="contact"),
    path('about/',about, name="about"),
    path('api/', include(router.urls)),
    # path('productos.html', productos, name="productos"),
    # path('productosapi/', productosapi, name="productosapi"),
    # path('descripcion.html', descripcion, name="descripcion"),
    # path('registration/login.html',login, name="login"),
    # path('registrarse.html',registrarse, name="registrarse"),
    # path('perfilusuario.html',perfilusuario,name="perfilusuario"),
    # path('boleta.html',boleta,name="boleta"),
    # path('suscripcion.html',suscripcion,name="suscripcion"),
    # path('carrito/',carrito,name="carrito"),

    path('agregar_al_carrito/<id>/', agregar_al_carrito, name="agregarcarrito"),
    path('borrar_carrito/<id>/', borrar_carrito, name="borrarcarrito"),
    path('restar_carrito/<id>/', restar_carrito, name="restarcarrito"),

    path('agregar.html',agregar,name="agregar"),
    path('modificar/<id>',modificar,name="modificar"),
    path('delete/<id>/', delete, name="delete"),
]