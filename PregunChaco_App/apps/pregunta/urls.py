from django.urls import path
from .views import listar_categoria, listar_pregunta

app_name = 'pregunta'

urlpatterns = [
	path('categoria/', listar_categoria, name = 'categoria'),
	path('preguntas/', listar_pregunta, name = 'preguntas')

]






  