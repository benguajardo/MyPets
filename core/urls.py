from django.urls import path, include
from .views import *
from rest_framework import routers

urlpatterns = [
    path('',index, name="index"),
    path('shop',shop, name="shop"),
    path('single',single, name="single"),
    path('contact',contact, name="contact"),
    path('about',about, name="about"),
]
