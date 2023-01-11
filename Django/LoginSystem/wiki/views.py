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
        return redirect('wiki_article_detail',slug=article.slug)
    return render(request, 'wiki/article_form.html',{'form': form})

@login_required
def ArticleEditView(request, slug):
    article = get_object_or_404(models.Article, slug=slug)
    form = ArticleForm(request.POST or None, instance=article)
    Edit_form = EditForm(request.POST or None)
    if form.is_valid():
        article = form.save()
        if Edit_form.is_valid():
            edit = Edit_form.save(commit=False)


class ArticleDetailView(DetailView):
    model = models.Article
    context_object_name = 'article'

class ArticleListView(ListView):
    def get_queryset(self):
        return models.Article.objects.all()#.filter(author=self.request.user)
    context_object_name = "wikis"