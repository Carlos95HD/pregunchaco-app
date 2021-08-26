from django.contrib import admin
from .models import Usuario

class UsuarioAdmin(admin.ModelAdmin):
    list_display = ['username', 'is_staff', 'is_superuser']

admin.site.register(Usuario, UsuarioAdmin)