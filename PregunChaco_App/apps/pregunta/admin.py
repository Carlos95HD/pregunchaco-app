from django.contrib import admin
from django.db.models.fields import AutoField
from .models import Pregunta, ElegirRespuesta, categoria, PreguntasRespondidas
from .forms import ElegirInlineFormset

class ElegirRespuestaInline(admin.TabularInline):
    model = ElegirRespuesta
    can_delete = False
    min_num = 2
    max_num = 4
    formset = ElegirInlineFormset

class PreguntaAdmin(admin.ModelAdmin):
    model = Pregunta
    inlines = (ElegirRespuestaInline,)
    list_display = ['texto']
    list_filter=['categorias']

class ElegirRespuestaAdmin(admin.ModelAdmin):
    list_display = ['texto','pregunta']


class PreguntasRespondidasAdmin(admin.ModelAdmin):
	list_display = ['pregunta', 'respuesta', 'correcta', 'puntaje_obtenido']

	class Meta:
		model = PreguntasRespondidas


admin.site.register(Pregunta, PreguntaAdmin)
admin.site.register(ElegirRespuesta, ElegirRespuestaAdmin)
admin.site.register(categoria)
admin.site.register(PreguntasRespondidas)
