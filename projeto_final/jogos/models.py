from django.db import models
from django.utils import timezone

class Jogo(models.Model):
    nome = models.CharField(max_length=150)
    desenvolvedor = models.CharField(max_length=100)
    preco = models.DecimalField(max_digits=5, decimal_places=2)
    plataforma = models.CharField(max_length=100)
    descricao = models.TextField()
    requisitos = models.TextField()
    idioma = models.TextField()
    genero = models.CharField(max_length=100)
    img = models.ImageField()
    background = models.ImageField(default='jogos/static/backgrounds')
    data_adicionado = models.DateField(default=timezone.now)

class Meta:
        db_table = 'projeto_final_jogo'  # Nome da tabela no banco de dados
    
def __str__(self):
      return self.nome
