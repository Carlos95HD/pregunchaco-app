from re import S
from django.shortcuts import render
from .models import categoria, Pregunta, Jugador, PreguntasRespondidas
# Create your views here.

def listar_categoria(request):
    categorias = categoria.objects.all()
    context = {"categorias":categorias}
    return render(request,'game/categorias.html', context)




# def listar_pregunta(request):
#  	preguntas = Pregunta.objects.all()
#  	context = {"preguntas":preguntas}
#  	return render(request, 'game/preguntas.html', context)




# def FiltrarPregunta(request, pk):
#  	filtradas = Pregunta.objects.filter(id= pk)
#  	context = {"preguntas":filtradas}
#  	return render(request, 'game/preguntas.html', context)


def jugar(request, pk):
    JugadorUser, created = Jugador.objects.get_or_create( jugador = request.user ) #Crea el usuario del jugador al elegir la categoria

    if request.method == 'POST':
        pregunta_pk = request.POST.get('pregunta_pk')
        pregunta_respondida = JugadorUser.intentos.select_related( 'pregunta' ).get( pregunta_pk = pregunta_pk )
        respuesta_pk = request.POST.get('respuesta_pk')
    else:
        respondidas = PreguntasRespondidas.objects.filter( jugador_user = JugadorUser ).values_list( "pregunta__pk", flat=True ) # filtra las preguntas respondidas
        pregunta_categoria = Pregunta.objects.filter( categorias_id = pk ).exclude( pk__in = respondidas ) #filtra la categoria y excluye las respondidas
        context = { "pregunta":pregunta_categoria }
        print(context)

    return render( request, 'game/preguntas.html', context )