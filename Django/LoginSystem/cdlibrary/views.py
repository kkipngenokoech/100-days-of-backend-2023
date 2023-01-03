from django.shortcuts import render, HttpResponse

# Create your views here.
def index(request):
    return HttpResponse("Welcome to multiverse")
    
def about(request):
    return HttpResponse("this is about me page")