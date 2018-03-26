# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'disappointed_fan_app/index.html')

def process(request):
    context={
        "input": request.POST['search']
    }
    return render(request, 'disappointed_fan_app/result.html', context)