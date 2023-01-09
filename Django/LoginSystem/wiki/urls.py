from django.urls import path, include
from . import views

urlpatterns = [
    # path('',views.ArticleListView.as_view(), name='wiki_article_index'),
    path("new/",views.ArticleCreateView.as_view(), name = "wiki_article_create")
]