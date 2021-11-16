from django.db import models

# Create your models here.
class Category(models.Model):
    class StatusOptions(models.TextChoices):
        Active = 'active'
        Inactive = 'inactive'

    name = models.CharField(max_length=128)
    parent = models.IntegerField(default=0)
    status = models.CharField(max_length=10, choices=StatusOptions.choices, default=StatusOptions.Active)
    created_at = models.DateTimeField(auto_now=True)
    updated_at = models.DateTimeField(auto_now=True)


class Customfield(models.Model):
    class FieldType(models.TextChoices):
        Text = 'text'
        File = 'file'

    field_name = models.CharField(max_length=200)
    field_value = models.TextField(null=True)
    system_field = models.CharField(max_length=100, default='no')
    category = models.ForeignKey(Category, on_delete=models.CASCADE, null=True)
    field_type = models.CharField(max_length=10, choices=FieldType.choices, default=FieldType.Text)
    created_at = models.DateTimeField(auto_now=True)
    updated_at = models.DateTimeField(auto_now=True)
