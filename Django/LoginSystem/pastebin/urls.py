from django.urls import path, include
from .views import PasteCreateView

urlpatterns = [
    path("",PasteCreateView.as_view(),name = "create")
]