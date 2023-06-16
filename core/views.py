from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request,'core/index.html')

def shop(request):
    return render(request,'core/shop.html')

def single(request):
    return render(request,'core/single.html')

def contact(request):
    return render(request,'core/contact.html')

def about(request):
    return render(request,'core/about.html')
