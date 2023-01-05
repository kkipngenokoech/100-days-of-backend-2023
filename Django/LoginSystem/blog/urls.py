from django.urls import path
from . import views
urlpatterns = [
    path("",views.PostListView.as_view(), name="index"),
    path("new/",views.add_post, name="add_post"),
]