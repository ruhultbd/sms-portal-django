from django.urls import path
from .views import MainView, CategoryView

from . import views

urlpatterns = [
    path('', MainView.as_view(), name="campaigns"),
    path('category', CategoryView.as_view(), name="campaigns.category"),
]
