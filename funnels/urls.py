from django.urls import path
from .views import MainView

from . import views

urlpatterns = [
    path('', MainView.as_view(), name="funnels"),
]
