from django.urls import path, include
from .views import PasteCreateView, PasteDetailView, PasteListView

urlpatterns = [
    path("",PasteCreateView.as_view(),name = "create"),
    path("paste/<int:pk>",PasteDetailView.as_view(),name = "pastebin_paste_detail"),
    path("pastes/",PasteListView.as_view(), name = "pastebin_paste_list")
]