from django.shortcuts import render
from django.views import View
from django.contrib.auth.mixins import LoginRequiredMixin

class MainView(LoginRequiredMixin, View):
    def get(self, request):
        context = {'title': 'Settings', 'active_nav': 'settings'}
        return render(request, 'settings/index.html', context)
