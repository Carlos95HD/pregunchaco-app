from django.shortcuts import render

def home(request): 
	return render(request, 'Home/home.html')

def inicio(request): 
	return render(request, 'game/inicio.html')

def modo(request): 
	return render(request, 'game/modo.html')