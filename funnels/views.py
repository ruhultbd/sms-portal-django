from django.shortcuts import render
from django.views import View
from django.contrib.auth.mixins import LoginRequiredMixin

class MainView(LoginRequiredMixin, View):
    def get(self, request):
        context = {'title': 'Funnels', 'active_nav': 'funnels'}
        return render(request, 'funnels/index.html', context)
