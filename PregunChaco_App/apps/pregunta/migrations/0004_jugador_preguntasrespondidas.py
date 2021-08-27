# Generated by Django 3.0 on 2021-08-27 03:01

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('pregunta', '0003_auto_20210824_1602'),
    ]

    operations = [
        migrations.CreateModel(
            name='Jugador',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('puntaje_total', models.DecimalField(decimal_places=2, default=0, max_digits=10, verbose_name='Puntaje Total')),
                ('jugador', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='PreguntasRespondidas',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('correcta', models.BooleanField(default=False, verbose_name='Es esta la respuesta correcta')),
                ('puntaje_obtenido', models.DecimalField(decimal_places=2, default=0, max_digits=6, verbose_name='Puntaje Obtenido')),
                ('jugador', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pregunta.Jugador')),
                ('pregunta', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='pregunta.Pregunta')),
                ('respuesta', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='intentos', to='pregunta.ElegirRespuesta')),
            ],
        ),
    ]
