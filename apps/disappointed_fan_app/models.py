# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

class Tw_DataManager(models.Manager):
    def save_data(self, hashtags, created_at_tw, text):
        Tw_Data.objects.create(hashtags = hashtags, 
            created_at_tw = created_at_tw, 
            text = text)
        return True
        
class Tw_Data(models.Model):
    hashtags = models.CharField(max_length=255, null=True)
    created_at_tw = models.CharField(max_length=255)
    text = models.TextField()
    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    objects = Tw_DataManager()
    