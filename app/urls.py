from django.urls import path
from . import views

urlpatterns = [
  path('', views.getUsers),
  path('create', views.createUser),
  path('update/<int:pk>', views.updateUser),
  path('read/<int:pk>', views.getUser),
  path('delete/<int:pk>', views.deleteUser)
]