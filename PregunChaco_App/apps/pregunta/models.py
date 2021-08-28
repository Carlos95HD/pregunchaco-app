from django.db import models
from django.conf import settings
import random

class categoria(models.Model):

    Categoria = models.CharField(
        verbose_name=("Categoria"),
        max_length=250, blank=True,
        unique=True, null=True)

    def __str__(self):
    	return self.Categoria


class Pregunta (models.Model):

    cantidad_de_respuetas_permitidas = 1

    texto = models.TextField(verbose_name= 'Texto de la pregunta')
    categorias = models.ForeignKey(categoria, related_name='categorias', on_delete=models.CASCADE)
    max_puntaje = models.DecimalField(verbose_name='Maximo Puntaje', default=3, decimal_places=2, max_digits=6)
    def __str__(self):
        return self.texto 

class ElegirRespuesta(models.Model):

    pregunta = models.ForeignKey(Pregunta, related_name='opcion', on_delete=models.CASCADE)
    correcta = models.BooleanField(verbose_name= 'Es esta la pregunta correcta?', default=False, null=False)
    texto = models.TextField(verbose_name= 'Texto de la respuesta')

    def __str__(self):
        return self.texto

class Jugador(models.Model):
    jugador = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    puntaje_total = models.DecimalField(verbose_name='Puntaje Total', default=1, decimal_places=2, max_digits=10, null=True)

    def crear_intentos(self, pregunta):
        intento = PreguntasRespondidas( pregunta = pregunta, jugador_user = self )
        intento.save()

    def obtener_nuevas_preguntas(self, pk):
        #filtra las preguntas respondidas
        respondidas = PreguntasRespondidas.objects.filter(jugador_user=self).values_list('pregunta__pk', flat=True)
        #filtra la categoria y excluye las respondidas
        preguntas_restantes = Pregunta.objects.filter(categorias_id=pk).exclude(pk__in=respondidas)

        if not preguntas_restantes.exists():
            return None
        return random.choice(preguntas_restantes)

    def validar_intento(self, pregunta_respondida, respuesta_seleccionada):
        if pregunta_respondida.pregunta_id != respuesta_seleccionada.pregunta_id:
            return

        pregunta_respondida.respuesta_seleccionada = respuesta_seleccionada
        if respuesta_seleccionada.correcta is True:
            pregunta_respondida.correcta = True
            pregunta_respondida.puntaje_obtenido = respuesta_seleccionada.pregunta.max_puntaje
            pregunta_respondida.respuesta = respuesta_seleccionada

        else:
            pregunta_respondida.respuesta = respuesta_seleccionada
        pregunta_respondida.save()

        #instanciamos la funcion actualizar puntajes
        self.actualizar_puntaje()

    def vaciar_respondidas_user(self):
        respondidas = PreguntasRespondidas.objects.filter(jugador_user=self) #Obtiene preguntas respondidas del usuario
        respondidas.delete() #Elimina las respondidas

    #Actualiza puntajes en el jugador_user
    def actualizar_puntaje(self):
        puntaje_actualizado = self.intentos.filter(correcta=True).aggregate(
        models.Sum('puntaje_obtenido'))['puntaje_obtenido__sum']

        self.puntaje_total = puntaje_actualizado
        self.save()

class PreguntasRespondidas(models.Model):
	jugador_user = models.ForeignKey(Jugador, on_delete=models.CASCADE, related_name='intentos')
	pregunta = models.ForeignKey(Pregunta, on_delete=models.CASCADE)
	respuesta = models.ForeignKey(ElegirRespuesta, on_delete=models.CASCADE, null=True)
	correcta = models.BooleanField(verbose_name= 'Es esta la respuesta correcta', default=False, null=False)
	puntaje_obtenido = models.DecimalField(verbose_name='Puntaje Obtenido', default=0, decimal_places=2, max_digits=6)


# ##class Rubro(models.Model):
    
#     def __str__(self):
#         return self.nombre

# class SubRubro(models.Model):
#     nombre = models.CharField(max_length = 50)
#     rubro = models.ForeignKey(Rubro, related_name = 'mi_rubro', on_delete=models.CASCADE)
#     def __str__(self):
#         return self.nombre
