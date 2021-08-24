from django.contrib.auth.forms import UserCreationForm
from .models import Usuario
from django import forms
class CustomUserForm(UserCreationForm):
    class Meta:
      model = Usuario
      fields = ['first_name','last_name','email','username', 'password1', 'password2']