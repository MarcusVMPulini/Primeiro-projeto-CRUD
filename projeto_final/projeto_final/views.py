from django.shortcuts import render, redirect
from django.shortcuts import render, get_object_or_404
from .forms import JogoForm
from .models import Jogo
import os


def add_jogo(request):
    if request.method == 'POST':
        nome = request.POST['nome']
        desenvolvedor = request.POST['desenvolvedor']
        preco = request.POST['preco'].replace(',', '.')
        plataformas = request.POST.getlist('plataformas')
        descricao = request.POST['descricao']
        requisitos = request.POST['requisitos']
        idiomas = request.POST.getlist('idiomas')
        generos = request.POST.getlist('generos')
        img = request.FILES.get('img')  # Use get para evitar KeyError
        background = request.FILES.get('background')

        # Converte o preço para Decimal
        preco_decimal = round(float(preco), 2)  # Certifique-se de que a conversão é correta

        # Cria a nova instância do jogo
        novo_jogo = Jogo(
            nome=nome,
            desenvolvedor=desenvolvedor,
            preco=preco_decimal,
            plataformas=','.join(plataformas),  # Concatena plataformas em uma string
            descricao=descricao,
            requisitos=requisitos,
            idiomas=','.join(idiomas),  # Concatena idiomas em uma string
            generos=','.join(generos),  # Concatena gêneros em uma string
            img=img,
            background=background
        )
        
        novo_jogo.save()  # Salva a nova instância no banco de dados
        return redirect('')

    # Se não for um POST, pode retornar um formulário ou algo similar
    return render(request, 'back/add_jogo.html')  # Ajuste o template conforme necessário

    
'''def jogo_list(request):
    jogos = Jogo.objects.all()
    return render(request, 'front/jogo_list.html', {'jogos' : jogos})'''

def index(request):
    jogos = Jogo.objects.all()
    jogos_recente = jogos.order_by('-data_adicionado')  # Defina a variável jogos aqui
    return render(request, 'front/index.html', {'jogos': jogos, 'jogos_recente': jogos_recente} )

def pagjogos(request, id):
    jogos = get_object_or_404(Jogo, id=id)  # Defina a variável jogos aqui
    return render(request, 'front/promocao1.html', {'jogos': jogos})

def busca(request):
    jogos = Jogo.objects.all()  # Defina a variável jogos aqui
    return render(request, 'front/busca.html', {'jogos': jogos})

context = {
    "caminho_imagem": 'static/backgrounds/'
}

        