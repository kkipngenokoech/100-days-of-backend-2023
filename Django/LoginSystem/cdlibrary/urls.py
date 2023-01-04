from django.urls import path, include
from . import views

urlpatterns = [
    path("",views.CdListView.as_view(), name="cds"),
    path("",views.index,name="index"),
    path("about/",views.about,name="about")
]