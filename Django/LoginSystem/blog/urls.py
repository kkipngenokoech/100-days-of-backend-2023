from django.urls import path
from . import views
urlpatterns = [
    path("",views.PostListView.as_view(), name="index"),
    path("post/<str:slug>",views.view_post,name = "blog_post_detail"),
    path("new/",views.add_post, name="blog_add_post"),
]