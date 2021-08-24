from django.contrib import admin

from .models import Pregunta, ElegirRespuesta, categoria


admin.site.register(Pregunta)
admin.site.register(ElegirRespuesta)
admin.site.register(categoria)

