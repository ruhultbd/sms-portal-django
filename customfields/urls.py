from django.urls import path
from .views import MainView, Category, CampaignTree

from . import views

urlpatterns = [
    path('', MainView.as_view(), name="custom-fields"),
    path('/category', Category.as_view(), name="custom-fields.category"),
    path('/campaign-tree', CampaignTree.as_view(), name="custom-fields.campaign-tree"),
]
