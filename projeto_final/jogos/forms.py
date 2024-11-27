from django import forms
from .models import Jogo

class JogoForm(forms.ModelForm):
    class Meta:
        model = Jogo
        fields = ['nome', 'desenvolvedor', 'preco', 'plataforma', 'descricao', 'requisitos', 'idioma', 'genero', 'img', 'background']