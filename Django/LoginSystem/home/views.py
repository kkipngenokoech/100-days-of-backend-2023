from django.shortcuts import render, HttpResponse, redirect 
from django.urls import reverse_lazy
from django.contrib.auth import logout
from django.contrib.auth.forms import UserCreationForm
from django.views.generic import CreateView
from django.contrib.auth.views import PasswordChangeView
from django.contrib.auth.models import User
# Create your views here.
def home(request):
    return render(request,'home.html')

def LogoutView(request):
    logout(request)
    return redirect('home')

class SignupView(CreateView):
    form_class = UserCreationForm
    success_url = reverse_lazy('login')
    template_name = "registration/signup.html"

class PasswordChangeView(PasswordChangeView):
    success_url = reverse_lazy('login')