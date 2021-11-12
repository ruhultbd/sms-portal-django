from django.shortcuts import render
from django.views import View
from django.contrib.auth.mixins import LoginRequiredMixin

class MainView(LoginRequiredMixin, View):
    def get(self, request):
        context = {'title': 'Campaigns', 'active_nav':'campaigns'}
        return render(request, 'campaigns/index.html', context)
