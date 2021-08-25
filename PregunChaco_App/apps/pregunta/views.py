from django.shortcuts import render
from .models import categoria, Pregunta
from django.views.generic import DetailView
# Create your views here.

def listar_categoria(request):
    categorias = categoria.objects.all()
    context = {"categorias":categorias}
    return render(request,'game/categorias.html', context)




def listar_pregunta(request):
 	preguntas = Pregunta.objects.all()
 	context = {"preguntas":preguntas}
 	return render(request, 'game/preguntas.html', context)




def FiltrarPregunta(request, pk):
 	filtradas = Pregunta.objects.filter(id= pk)
 	context = {"preguntas":filtradas}
 	return render(request, 'game/preguntas.html', context)
