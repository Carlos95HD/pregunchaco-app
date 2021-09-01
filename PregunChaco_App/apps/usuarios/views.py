from django.shortcuts import render, redirect
from .forms import CustomUserForm
from django.contrib.auth import login, authenticate
from django.contrib import messages

def registro_usuario(request):
    form = {"form":CustomUserForm()}

    if request.method == 'POST':
        form = CustomUserForm(request.POST)
        if form.is_valid():
            form.save()
            #Autenticar y redirigirlo al inicio
            username = form.cleaned_data['username']
            password = form.cleaned_data['password1']
            user = authenticate(username=username, password=password)
            login(request, user)
            messages.success(request,'Te has registrado correctamente')
            return redirect(to='home')
        else:
            return render(request, 'usuarios/register.html', {"form":form})

    return render(request, 'usuarios/register.html', form)