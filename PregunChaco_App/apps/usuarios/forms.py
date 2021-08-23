from django.contrib.auth.forms import UserCreationForm
from .models import Usuario

class CustomUserForm(UserCreationForm):
    class Meta:
      model = Usuario
      fields = ['first_name','last_name','email','username', 'password1', 'password2']