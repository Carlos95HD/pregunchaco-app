from django import forms

from .models import Pregunta, ElegirRespuesta, PreguntasRespondidas

class ElegirInlineFormset(forms.BaseInlineFormSet):
    def clean(self):
        super(ElegirInlineFormset, self).clean()

        respuesta_correcta = 0
        for formulario in self.forms:
            if not formulario.is_valid():
                return

            if formulario.cleaned_data and formulario.cleaned_data.get('correcta') is True:
                respuesta_correcta += 1

        try:
            assert respuesta_correcta == Pregunta.cantidad_de_respuetas_permitidas 
        except AssertionError:
            raise forms.ValidationError('Solo una respuesta es correcta')