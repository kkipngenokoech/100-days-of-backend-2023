from django.shortcuts import render
from django.urls import reverse_lazy
from django.views.generic import CreateView, DetailView, ListView, UpdateView, DeleteView
from .models import Paste

# Create your views here.
class PasteCreateView(CreateView):
    model = Paste
    fields = ['text', 'name']
    success_url = reverse_lazy("pastebin_paste_list")

class PasteDetailView(DetailView):
    model = Paste
    template_name = "pastebin/paste_detail.html"

class PasteListView(ListView):
    model = Paste
    context_object_name = 'pastes'

class PasteUpdateView(UpdateView):
    model = Paste
    fields = ['text', 'name']

class PasteDeleteView(DeleteView):
    model = Paste
    success_url = reverse_lazy("pastebin_paste_list")