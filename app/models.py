from django.db import models

# Create your models here.
class User(models.Model):
  id=models.BigAutoField(primary_key=True)
  name=models.CharField(max_length=250)
  email=models.EmailField(max_length=250, unique=True)
  created_At= models.DateTimeField(auto_now_add=True)
  
  class Meta:
    ordering=('-created_At',)
    verbose_name_plural='Users'
    db_table='Users'
    
  def __str__(self):
    return self.name