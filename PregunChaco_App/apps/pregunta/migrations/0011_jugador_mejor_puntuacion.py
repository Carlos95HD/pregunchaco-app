# Generated by Django 3.0 on 2021-08-30 22:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pregunta', '0010_auto_20210828_2012'),
    ]

    operations = [
        migrations.AddField(
            model_name='jugador',
            name='mejor_puntuacion',
            field=models.DecimalField(decimal_places=2, default=1, max_digits=10, null=True, verbose_name='Puntaje Total'),
        ),
    ]
