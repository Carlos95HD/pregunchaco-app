from django.urls import path
from .views import listar_categoria

app_name = 'pregunta'

urlpatterns = [
	path('categoria/', listar_categoria, name = 'categoria'),
]