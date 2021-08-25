from django.urls import path
from .views import listar_categoria, listar_pregunta, FiltrarPregunta

app_name = 'pregunta'

urlpatterns = [
	path('categoria/', listar_categoria, name = 'categoria'),
	path('preguntas/', listar_pregunta, name = 'preguntas'),
	path('filtradas/<int:pk>', FiltrarPregunta, name= 'filtradas'),

]






  