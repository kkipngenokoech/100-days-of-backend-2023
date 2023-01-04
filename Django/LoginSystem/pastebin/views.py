from django.shortcuts import render
from django.views.generic import CreateView, DetailView, ListView
from .models import Paste

# Create your views here.
class PasteCreateView(CreateView):
    model = Paste
    fields = ['text', 'name']

class PasteDetailView(DetailView):
    model = Paste
    template_name = "pastebin/paste_detail.html"

class PasteListView(ListView):
    model = Paste
    context_object_name = 'pastes'