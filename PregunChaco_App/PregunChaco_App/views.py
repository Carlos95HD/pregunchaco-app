from django.shortcuts import render

def home(request): 
	return render(request, 'Home/home.html')

def inicio(request): 
	return render(request, 'game/inicio.html')

def modo(request): 
	return render(request, 'game/modo.html')

# def categorias(request):
# 	return render(request, 'game/categorias.html')

def preguntas(request):
	return render (request, 'game/preguntas.html')