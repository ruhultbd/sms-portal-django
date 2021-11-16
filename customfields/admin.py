from django.contrib import admin
from customfields.models import Category, Customfield
from django.utils.html import format_html
from django.contrib.admin import DateFieldListFilter

categories = Category.objects.filter(parent=0, status='active')

class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name', 'parent', 'status', 'created_at']
    search_fields = ['name', 'parent', 'status', 'created_at']
    list_filter = ['status', 'parent']
    ordering = ('name', 'status', 'created_at')
    ordering = ['-id']


admin.site.register(Category, CategoryAdmin)

# admin.site.register(Customfield)