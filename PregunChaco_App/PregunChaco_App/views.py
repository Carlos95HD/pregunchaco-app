from django.shortcuts import render
import random

def home(request): 
	return render(request, 'Home/home.html')

def inicio(request): 
	return render(request, 'game/inicio.html')

def modo(request):
	context={} 
	Cat = random.randint(1, 7)
	context = { "Cat": Cat }
	return render(request, 'game/modo.html',context)

# def categorias(request):
# 	return render(request, 'game/categorias.html')

def preguntas(request):
	return render (request, 'game/preguntas.html')