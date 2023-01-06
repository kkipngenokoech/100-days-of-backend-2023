from  django.urls import path,include
from home import views

urlpatterns = [
    path('home/', views.home, name='home'),
    path("logout/",views.LogoutView,name = "logout"),
    path("signup/",views.SignupView.as_view(),name ="signup"),
    path("changepassword/<int:pk>/",views.PasswordChangeView.as_view(),name ='change_password'),
]