from django.urls import path, include
from . import views

urlpatterns = [
    path("",views.CdListView.as_view(), name="cds"),
    path("",views.index,name="index"),
    path("new/",views.CdCreateView.as_view(),name="new"),
    path("about/",views.about,name="about")
]