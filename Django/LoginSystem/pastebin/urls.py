from django.urls import path, include
from .views import PasteCreateView, PasteDetailView, PasteListView, PasteUpdateView, PasteDeleteView

urlpatterns = [
    path("",PasteCreateView.as_view(),name = "create"),
    path("paste/<int:pk>",PasteDetailView.as_view(),name = "pastebin_paste_detail"),
    path("pastes/",PasteListView.as_view(), name = "pastebin_paste_list"),
    path("paste/edit/<int:pk>",PasteUpdateView.as_view(), name = "pastebin_paste_edit"),
    path("paste/delete/<int:pk>",PasteDeleteView.as_view(),name = "pastebin_paste_delete")
]