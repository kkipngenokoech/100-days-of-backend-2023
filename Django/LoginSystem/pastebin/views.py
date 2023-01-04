from django.shortcuts import render
from django.views.generic import CreateView
from .models import Paste

# Create your views here.
class PasteCreateView(CreateView):
    model = Paste
    fields = ['text', 'name']
