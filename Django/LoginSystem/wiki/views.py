from . import models
from .forms import ArticleForm, EditForm
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.shortcuts import redirect, render, get_object_or_404
from django.views.generic import ListView,  DetailView
from django.http import HttpResponse
# Create your views here.
@login_required
def ArticleCreateView(request):
    form = ArticleForm(request.POST or None)
    if form.is_valid():
        article = form.save(commit=False)
        article.author = request.user
        article.save()
        msg = "Article saved successfully"
        messages.success(request, msg, fail_silently=True)
        return redirect('home')
    return render(request, 'wiki/article_form.html',{'form': form})