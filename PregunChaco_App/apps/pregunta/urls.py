from django.urls import path
from .views import listar_categoria,jugar

app_name = 'pregunta'

urlpatterns = [
	path('categoria/', listar_categoria, name = 'categoria'),
	path('jugar/<int:pk>', jugar, name= 'jugar'),
]






  