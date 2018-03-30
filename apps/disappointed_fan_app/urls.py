from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name="index"),
    url(r'^process$', views.process, name="process"),
    url(r'^main$', views.main, name="main"),
    url(r'^process_main$', views.process_main, name="process_main"),
    # url(r'^result$', views.result, name="result"),
    url(r'^data.json$', views.data_json, name="data.json"),
]