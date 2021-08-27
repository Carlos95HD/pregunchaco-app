from django.db import models
from django.conf import settings

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

    def __str__(self):
        return self.texto 

class ElegirRespuesta(models.Model):

    pregunta = models.ForeignKey(Pregunta, related_name='preguntas', on_delete=models.CASCADE)
    correcta = models.BooleanField(verbose_name= 'Es esta la pregunta correcta?', default=False, null=False)
    texto = models.TextField(verbose_name= 'Texto de la respuesta')

    def __str__(self):
        return self.texto

class Jugador(models.Model):
	jugador = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
	puntaje_total = models.DecimalField(verbose_name='Puntaje Total', default=0, decimal_places=2, max_digits=10)


class PreguntasRespondidas(models.Model):
	jugador_user = models.ForeignKey(Jugador, on_delete=models.CASCADE)
	pregunta = models.ForeignKey(Pregunta, on_delete=models.CASCADE)
	respuesta = models.ForeignKey(ElegirRespuesta, on_delete= models.CASCADE, related_name='intentos')
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
