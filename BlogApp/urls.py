from re import template
from django.urls import path
from BlogApp import views
from django.contrib.auth.views import LoginView,LogoutView

urlpatterns = [
    # path("", LoginView.as_view(template_name="TodoApp/login.html"), name="login"),
    # path("logout", LogoutView.as_view(), name="logout"),
   
    path("", views.index, name="index"),
    path("category/<slug>", views.category, name="category"),
    path("category2/<slug>", views.category2, name="category2"),

    path("fullpost/<slug>", views.fullpost, name="fullpost"),
    path("comments/<id>", views.comments, name="comments")
]

