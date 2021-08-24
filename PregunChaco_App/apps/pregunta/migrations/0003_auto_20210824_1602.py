# Generated by Django 3.0 on 2021-08-24 19:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('pregunta', '0002_categoria'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='categoria',
            name='categoria',
        ),
        migrations.RemoveField(
            model_name='categoria',
            name='pregunta',
        ),
        migrations.AddField(
            model_name='categoria',
            name='Categoria',
            field=models.CharField(blank=True, max_length=250, null=True, unique=True, verbose_name='Categoria'),
        ),
        migrations.AddField(
            model_name='pregunta',
            name='categorias',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='categorias', to='pregunta.categoria'),
            preserve_default=False,
        ),
    ]