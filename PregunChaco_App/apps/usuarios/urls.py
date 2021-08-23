from django.urls import path
from .views import registro_usuario

app_name = 'usuarios'

urlpatterns = [
	path('register/', registro_usuario, name = 'register'),
]