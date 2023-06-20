from django.shortcuts import render, redirect, get_object_or_404
from .models import *
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
from rest_framework import viewsets
from .serializers import *
import requests

def about(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/marcaproductos/')
    marca = respuesta.json()
    data = {
        'listamarcas' : marca,
    }
    return render(request,'core/about.html',data)

def contact(request):
    return render(request, 'core/contact.html')

def administracion(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    respuesta2 = requests.get('http://127.0.0.1:8000/api/usuarios/')
    productos = respuesta.json()
    usuarios = respuesta2.json()
    data = {
        'listaproductos' : productos,
        'listausuarios' : usuarios,
    }
    return render(request,'core/administracion.html',data)

def about(request):
    return render(request, 'core/about.html')

def index(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    productos = respuesta.json()
    data = {
        'listaproductos' : productos,
    }
    return render(request,'core/index.html',data)

def base(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/tipoproductos/')
    tipoproductos = respuesta.json()
    data = {
        'listatipoproductos' : tipoproductos,
    }
    return render(request,'core/base.html',data)

def single(request,id):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    productos = respuesta.json()
    producto = get_object_or_404(Producto, id=id)
    data = {
        'listaproductos' : productos,
    }
    return render(request, 'core/single.html', {'producto':producto}, data)

def shop(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos/')
    respuesta2 = requests.get('https://mindicador.cl/api/dolar')
    
    productos = respuesta.json()
    monedas = respuesta2.json()
    valor_usd = monedas['serie'][0]['valor']

            #ESTO DEBE VARIAR DEPENDIENDO DEL PAGO
    valor_carrito = 20000
    valor_final = valor_carrito / valor_usd
    data = {

        'listaproductos' : productos,
        'valor' : round(valor_final,2)
    }
    return render(request, 'core/shop.html',data)

def suscripcion(request):
    return render(request, 'core/suscripcion.html')

def login(request):
    return render(request, 'registration/login.html')

def salir(request):
    logout(request)
    return redirect, ('core/')

                   #VISTAS DEL CARRO
def agregar_al_carrito(request,id):
    producto = Producto.objects.get(id=id)
    carritocli, created = CarritoCliente.objects.get_or_create(usuario=request.user)
    carritoprod, item_created = CarritoProducto.objects.get_or_create(producto=producto, usuario=request.user)
    if not item_created:
        carritoprod.cantidad +=1
        carritoprod.save()
        
    carritocli.items.add(carritoprod)
    carritocli.save()

    return redirect(to='carrito')

def restar_carrito(request, id):
    producto = Producto.objects.get(id=id)
    carritocli, created = CarritoCliente.objects(usuario=request.user)
    carritoprod = carritocli.items.get(producto=producto)
    if carritoprod.cantidad == 0:
        carritocli.items.remove(carritoprod)
        carritoprod.delete()
    else:
        carritoprod.cantidad -= 1
        carritoprod.save()
    return redirect(to='carrito')

def carrito(request):
    carritocli = CarritoCliente.objects.get(usuario = request.user)
    productos_carrito = carritocli.items.all()
    precio_total = carritocli.calcular_total()
    data = {
        'productos': productos_carrito,
        'total': precio_total,
    }
    return render(request, 'core/carrito.html',data)

def borrar_carrito(request, id):
    producto = Producto.objects.get(id=id)
    carritocli = CarritoCliente.objects.get(usuario=request.user)
    carritoprod = CarritoProducto.items.get(producto=producto)

    carritocli.items.remove(carritoprod)
    carritoprod.delete()

    return redirect(to='carrito')
                                            #VISTAS DEL CARRO

                                            #CRUD PRODUCTOS
def agregar_producto(request):
    data = {
        'form' : ProductoForm()
    }
    if request.method == 'POST': 
        formulario = ProductoForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save() #COMMIT
            #data['msj'] = 'Producto guardado correctamente!'
            messages.success(request, "Producto almacenado correctamente")
    return render(request,'core/agregar_producto.html',data)

def modificar_producto(request,id):
    producto = Producto.objects.get(id=id)
    data = {
        'form' : ProductoForm(instance=producto)
    }
    if request.method =='POST':
        formulario = ProductoForm(data=request.POST, instance=producto, files=request.FILES) 
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto actualizado correctamente")
            data['form'] = formulario
    return render(request, 'core/modificar_producto.html',data)

def delete(request,id):
    producto = Producto.objects.get(id=id) # BUSCAMOS UN PRODUCTO POR SU ID
    producto.delete()

    return redirect(to="index")

                   #ESTO DEBERIA IR A USER
def registrarse(request):
    data = {
        'form' : UsuarioForm()
    }
    if request.method == 'POST': 
        formulario = UsuarioForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save() #COMMIT
            #data['msj'] = 'Producto guardado correctamente!'
            messages.success(request, "Producto almacenado correctamente")
    return render(request,'core/registrarse.html',data)
                   #CRUD PRODUCTOS

                   #VIEWSETS
class ProductoViewset(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializers

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializers

class MarcaViewset(viewsets.ModelViewSet):
    queryset= MarcaProducto.objects.all()
    serializer_class = MarcaProductoSerializers

class MascotaViewset(viewsets.ModelViewSet):
    queryset= Mascota.objects.all()
    serializer_class = MascotaSerializers

class UserViewset(viewsets.ModelViewSet):
    queryset= User.objects.all()
    serializer_class = UserSerializers
