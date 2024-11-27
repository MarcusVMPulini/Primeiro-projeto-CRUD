from django.shortcuts import render, redirect
from .forms import JogoForm
from .models import Jogo


def add_jogo(request):
    if request.method == 'POST':
        form = JogoForm(request.POST)
        if form.is_valid():
            form.save()
            return
        redirect('index')
    else:
        form = JogoForm()
        return render(request, 'back/add_jogo.html', {'form' : form})
    
def jogo_list(request):
    jogos = Jogo.objects.all()
    jogos_recente = Jogo.order_by('-data_adicionado')
    return render(request, 'front/jogo_list.html', {'jogos' : jogos, 'jogos_recente': jogos_recente})
        