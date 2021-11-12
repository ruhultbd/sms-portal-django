from django.shortcuts import render
from django.views import View
from django.contrib.auth.mixins import LoginRequiredMixin

class MainView(LoginRequiredMixin, View):
    def get(self, request):
        context = {'title': 'Custom Fields', 'active_nav': 'custom-fields'}
        return render(request, 'custom-fields/index.html', context)
