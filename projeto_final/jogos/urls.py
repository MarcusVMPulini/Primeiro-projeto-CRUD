from django.urls import path
from django.urls import include
from django.conf import settings
from django.conf.urls.static import static

urlpatters = [
    path('', include('jogos.urls'))
]