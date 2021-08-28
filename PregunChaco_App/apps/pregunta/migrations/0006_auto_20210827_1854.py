# Generated by Django 3.0 on 2021-08-27 21:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pregunta', '0005_auto_20210827_0401'),
    ]

    operations = [
        migrations.AddField(
            model_name='pregunta',
            name='max_puntaje',
            field=models.DecimalField(decimal_places=2, default=3, max_digits=6, verbose_name='Maximo Puntaje'),
        ),
        migrations.AlterField(
            model_name='elegirrespuesta',
            name='pregunta',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='opcion', to='pregunta.Pregunta'),
        ),
    ]
