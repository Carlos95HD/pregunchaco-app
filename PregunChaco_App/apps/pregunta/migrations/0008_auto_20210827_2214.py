# Generated by Django 3.0 on 2021-08-28 01:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pregunta', '0007_auto_20210827_2147'),
    ]

    operations = [
        migrations.AlterField(
            model_name='preguntasrespondidas',
            name='jugador_user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='intentos', to='pregunta.Jugador'),
        ),
    ]
