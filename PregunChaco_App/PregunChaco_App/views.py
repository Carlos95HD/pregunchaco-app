from django.shortcuts import render
from apps.pregunta.models import Jugador
import random

def home(request): 
	return render(request, 'Home/home.html')

def inicio(request): 
	return render(request, 'game/inicio.html')

def modo(request):
    JugadorUser, created = Jugador.objects.get_or_create( jugador = request.user ) #Obtiene el jugador del usuario al entrar a categoria
    JugadorUser.vaciar_respondidas_user()

    context={} 
    Cat = random.randint(1, 7)
    context = { "Cat": Cat }
    return render(request, 'game/modo.html',context)


def preguntas(request):
	return render (request, 'game/preguntas.html')