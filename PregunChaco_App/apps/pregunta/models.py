from django.db import models


class categoria(models.Model):
    Category = models.CharField(
        verbose_name=("Categoria"),
        max_length=250, blank=True,
        unique=True, null=True)


class Pregunta (models.Model):

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





# ##class Rubro(models.Model):
    
#     def __str__(self):
#         return self.nombre

# class SubRubro(models.Model):
#     nombre = models.CharField(max_length = 50)
#     rubro = models.ForeignKey(Rubro, related_name = 'mi_rubro', on_delete=models.CASCADE)
#     def __str__(self):
#         return self.nombre
