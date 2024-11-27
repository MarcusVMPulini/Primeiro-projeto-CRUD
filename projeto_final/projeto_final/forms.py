from django import forms
from .models import Jogo, Plataforma, Idioma, Genero

class JogoForm(forms.ModelForm):
    class Meta:
        model = Jogo
        fields = ['nome', 'desenvolvedor', 'preco', 'plataformas', 'descricao', 'requisitos', 'idiomas', 'generos', 'img', 'background']