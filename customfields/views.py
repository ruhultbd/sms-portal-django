from django.shortcuts import render
from django.views import View
from django.contrib.auth.mixins import LoginRequiredMixin

class MainView(LoginRequiredMixin, View):
    def get(self, request):
        context = {'title': 'Custom Fields', 'tab': 'system-fields', 'active_nav': 'custom-fields'}
        return render(request, 'custom-fields/index.html', context)

class Category(LoginRequiredMixin, View):
    def get(self, request):
        context = {'title': 'Custom Fields', 'tab': 'category', 'active_nav': 'custom-fields'}
        return render(request, 'custom-fields/category.html', context)

class CampaignTree(LoginRequiredMixin, View):
    def get(self, request):
        context = {'title': 'Custom Fields', 'tab': 'campaign-tree', 'active_nav': 'custom-fields'}
        return render(request, 'custom-fields/index.html', context)
