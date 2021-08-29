from django.core.exceptions import ObjectDoesNotExist
from django.http.response import Http404
from django.shortcuts import get_object_or_404, redirect, render
from .models import PreguntasRespondidas, categoria, Jugador
# Create your views here.

def listar_categoria(request):
    JugadorUser, created = Jugador.objects.get_or_create( jugador = request.user ) #Obtiene el jugador del usuario al entrar a categoria
    JugadorUser.vaciar_respondidas_user()

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

#Tabla de posiciones Mejores Jugadores
def tabla_posiciones(request):
    total_jugadores = Jugador.objects.order_by('-puntaje_total')[:10]
    contador = total_jugadores.count()

    context = {

        'total_jugadores':total_jugadores,
        'contar_user':contador
    }

    return render(request, 'game/tablaMejores.html', context)

def jugar(request, pk):
    context={}
    JugadorUser, created = Jugador.objects.get_or_create( jugador = request.user ) #Crea el jugador del usuario al elegir la categoria

    if request.method == 'POST':
        pregunta_pk = request.POST.get('pregunta_pk')
        pregunta_respondida = JugadorUser.intentos.select_related( 'pregunta' ).get( pregunta__pk = pregunta_pk )
        respuesta_pk = request.POST.get('respuesta_pk')

        try:
            opcion_seleccionada = pregunta_respondida.pregunta.opcion.get(pk=respuesta_pk)
        except ObjectDoesNotExist:
            raise Http404

        JugadorUser.validar_intento(pregunta_respondida, opcion_seleccionada)
        return redirect('pregunta:resultado', pregunta_respondida.pk)

    else:
        pregunta = JugadorUser.obtener_nuevas_preguntas( pk )

        if pregunta is not None:
            JugadorUser.crear_intentos(pregunta)
        # respondidas = PreguntasRespondidas.objects.filter( jugador_user = JugadorUser ).values_list( "pregunta__pk", flat=True ) # filtra las preguntas respondidas
        # pregunta_categoria = Pregunta.objects.filter( categorias_id = pk ).exclude( pk__in = respondidas ) #filtra la categoria y excluye las respondidas
        context = { "pregunta":pregunta , "cat" :pk}

    return render(request, 'game/preguntas.html', context)

def resultado_preguntas(request, pregunta_respondida_pk):
    respondida = get_object_or_404(PreguntasRespondidas, pk=pregunta_respondida_pk)

    context = {
        'respondida':respondida
    }

    return render(request, 'game/resultados.html', context)