from django.shortcuts import render, HttpResponse
from django.urls import reverse_lazy
from django.views.generic import ListView, CreateView
from .models import CD
# Create your views here.
class CdListView(ListView):
    model = CD
    template_name = "cds.html"
    context_object_name = "cds"

class CdCreateView(CreateView):
    model = CD
    fields = ['title', 'description', 'artist','date','genre']
    success_url = reverse_lazy('cds')

def index(request):
    return render(request,  "index.html",{"cd":"lucky you"})
    
def about(request):
    return HttpResponse("this is about me page")
