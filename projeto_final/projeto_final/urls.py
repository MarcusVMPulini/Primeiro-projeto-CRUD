from django.urls import path
from . import views
from . import views

urlpatterns = [
    path("", views.index, name=''),
    path("add/", views.add_jogo, name="add_jogo"),
    path("promocao1/<int:id>", views.pagjogos, name='promocao1'),
    path("busca/"  , views.busca, name="busca"),
]
