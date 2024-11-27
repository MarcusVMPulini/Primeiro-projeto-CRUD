from django.db import models

class Plataforma(models.Model):
    plataforma = models.CharField(max_length=100)

    def __str__(self):
        return self.plataforma
      

class Idioma(models.Model):
    idioma = models.CharField(max_length=100)

    def __str__(self):
        return self.idioma

class Genero(models.Model):
    genero = models.CharField(max_length=100)

    def __str__(self):
        return self.genero


def upload_to_imgbanco(instance, filename):
    return f'/static/imgbanco/{filename}'

class Jogo(models.Model):
    nome = models.CharField(max_length=255)
    desenvolvedor = models.CharField(max_length=255)
    preco = models.DecimalField(max_digits=10, decimal_places=2)
    plataformas = models.TextField()  # ou use uma relação se necessário
    descricao = models.TextField()
    requisitos = models.TextField()
    idiomas = models.TextField()  # pode ser um TextField ou uma relação
    generos = models.TextField()
    img = models.ImageField(upload_to="static/imgbanco")
    background = models.ImageField(upload_to="static/backgrounds")
    data_adicionado = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.nome