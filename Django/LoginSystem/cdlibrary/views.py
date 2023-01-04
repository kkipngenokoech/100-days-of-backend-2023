from django.shortcuts import render, HttpResponse
from django.views.generic import ListView
from .models import CD
# Create your views here.
class CdListView(ListView):
    model = CD
    template_name = "cds.html"
    context_object_name = "cds"

def index(request):
    return render(request,  "index.html",{"cd":"lucky you"})
    
def about(request):
    return HttpResponse("this is about me page")
