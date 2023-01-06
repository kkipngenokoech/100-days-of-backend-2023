from django.urls import path
from . import views
urlpatterns = [
    path("",views.PostListView.as_view(), name="index"),
    path("post/<str:slug>",views.view_post,name = "blog_post_detail"),
    path("new/",views.add_post, name="blog_add_post"),
    path("archive/<int:year>/month/<int:month>",views.PostMonthArchiveView.as_view(month_format='%m'), name = "blog_archive_month"),
    path("archive/<int:year>/week/<int:week>",views.PostWeekArchiveView.as_view(),name = "blog_archive_week"),
    path("logout/",views.LogoutView,name = "logout"),
]