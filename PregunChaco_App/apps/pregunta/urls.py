from django.urls import path
from .views import listar_categoria, jugar, resultado_preguntas,tabla_posiciones

app_name = 'pregunta'

urlpatterns = [
	path('categoria/', listar_categoria, name = 'categoria'),
	path('jugar/<int:pk>', jugar, name= 'jugar'),
	path('resultado/<int:pregunta_respondida_pk>/', resultado_preguntas, name= 'resultado'),
	path('tabla/', tabla_posiciones, name = 'tabla'),
]






  