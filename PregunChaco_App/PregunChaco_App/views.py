from django.shortcuts import render


def homeVista(request): 

	return render(request, 'home.html')
