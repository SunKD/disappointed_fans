# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.contrib import messages

from django.shortcuts import render, HttpResponse, redirect
from django.core import serializers
import json

import tweepy
import twitter_credentials
import datetime
import twitter
from models import Tw_Data

from models import UserSearch, Team, Sport

# Create your views here

def index(request):
    # twitter_hello()
    print "In Index Route"
    print Team.objects.all()
    context = {
        "context": {
            "Baseball" : Team.objects.filter(sport_id = 1),
            "Soccer": Team.objects.filter(sport_id = 2),
            "Hockey": Team.objects.filter(sport_id = 3),
            "Basketball": Team.objects.filter(sport_id = 4)
        },
    }
    if request.user_agent.is_mobile:
        return render(request, 'disappointed_fan_app/index_mobile.html')
    else:
        return render(request, 'disappointed_fan_app/index_desktop.html', context)

def process(request):
    print "In Process Route"
    response = UserSearch.objects.user_input_validator(request.POST)
    if not response['status']:
        for tag, error in response['errors'].iteritems():
            messages.error(request, error)
        return render(request, 'disappointed_fan_app/index_desktop.html')
    else:
        print "in process valid response"
        context={
            "curse": "#" + request.POST['index_curse'],
            "select1": request.POST.get('select1'),
            "select2": request.POST.get('select2'),
            "page": "index"
        }
        return render(request, 'disappointed_fan_app/main.html', context)

def process_main(request):
    print "In Process_Main Route"
    response = UserSearch.objects.user_input_validator(request.POST)
    if not response['status']:
        for tag, error in response['errors'].iteritems():
            messages.error(request, error)
        return render(request, 'disappointed_fan_app/main.html')

    context = {
        "curse": request.POST.get('main_curse'),
        "select1": request.POST.get('select1'),
        "select2": request.POST.get('select2'),
        "page": "main",
        "context": {
            "Baseball" : Team.objects.filter(sport_id = 1),
            "Soccer": Team.objects.filter(sport_id = 2),
            "Hockey": Team.objects.filter(sport_id = 3),
            "Basketball": Team.objects.filter(sport_id = 4)
        }
    }
    print "Context", context['context']
    return render(request, 'disappointed_fan_app/main.html', context)

def main(request):
    print "In Main route"
    return render(request, 'disappointed_fan_app/main.html')

def data_json(request):
    if request.method == 'POST':
        tags_data = {
            "tag": "#football",
            "datetweet": [
            "2018-02-01",
            "2018-02-02",
            "2018-02-03",
            "2018-02-04",
            "2018-02-05",
            "2018-02-06",
            "2018-02-07"],
        "data": [90, 322, 152, 136, 532, 512, 169]
        }
        
        tags_data = search_tweet(request.POST['curse'].strip())
        response_data = {}
        response_data['result'] = 'ok'
        response_data['message'] = 'Successfully'
        response_data['data'] = tags_data
        return HttpResponse(json.dumps(tags_data), content_type="application/json")
    
    response_data = {}
    response_data['result'] = 'error'
    return HttpResponse(json.dumps(response_data), content_type="application/json")

def twitter2():
    api = twitter.Api(consumer_key='YALCZmRQ6lZ7ATNiAoCHg9rWC',
                      consumer_secret='9xgJgZP2AQ9lOJuivUaRu2WLCMnxUnB4rbBZxDZbiNaqqy2W10',
                      access_token_key='978374762350067712-ak7ZarAZgf2pDoMLuLEt9LxdOpTmk7W',
                      access_token_secret='sSyRdjQtb4ZbKNvbNDYQ3QVuXJyGbgtrYKNtEJn5Arggf',
                      sleep_on_rate_limit=True)

    # print api.VerifyCredentials()
    keywords_done = ['MLS', 'NBA', 'NHL']
    keywords_done = ['Badminton', 'Biribol', 'Bossaball', 'Hiking', 'Seven-ball']
    keywords_done = ['soccer fan', 'dota']
    keywords = ['Tennis']

    for word in keywords:
        # results = api.GetSearch(raw_query="q=seahawk")
        results = api.GetSearch(raw_query="q={}".format(word))
        # print results

        for i in range(0, len(results)):
            print results[i].created_at, " - created_at"
            print results[i].hashtags, " - hashtags"
            print results[i].text, " - text"
            # Tw_Data.save_data(results[i].hashtags,
            #     results[i].created_at,
            #     results[i].text)

            hashtags = results[i].hashtags
            created_at_tw = results[i].created_at
            text = results[i].text
            Tw_Data.objects.create(hashtags = hashtags, 
                created_at_tw = created_at_tw, 
                text = text)

def search_tweet(keyword):
    api = twitter.Api(consumer_key='YALCZmRQ6lZ7ATNiAoCHg9rWC',
                      consumer_secret='9xgJgZP2AQ9lOJuivUaRu2WLCMnxUnB4rbBZxDZbiNaqqy2W10',
                      access_token_key='978374762350067712-ak7ZarAZgf2pDoMLuLEt9LxdOpTmk7W',
                      access_token_secret='sSyRdjQtb4ZbKNvbNDYQ3QVuXJyGbgtrYKNtEJn5Arggf',
                      sleep_on_rate_limit=True)

    results = api.GetSearch(raw_query="q={}".format(word))
    save_tweet_search(results)
    return generate_data(keyword, results)

def save_tweet_search(results):
    for i in range(0, len(results)):
        hashtags = results[i].hashtags
        created_at_tw = results[i].created_at
        text = results[i].text
        Tw_Data.objects.create(hashtags = hashtags, 
            created_at_tw = created_at_tw, 
            text = text)

def generate_data(keyword, results):
    data = {
        "tag": keyword,
        "datetweet":[],
        "data": []
    }
    counter = 0
    for i in range(0, len(results)):
        dt = tweet.created_at
        datekey = "{:04d}-{:02d}-{:02d}".format(dt.year, dt.month, dt.day)
        counter += 1
        if datekey not in data.datetweet:
            counter = 0
        data.datetweet.append(datekey)
        data.data.append(counter)

    return data
    

def twitter_hello():
    auth = tweepy.OAuthHandler(twitter_credentials.consumer_key, twitter_credentials.consumer_secret)
    auth.set_access_token(twitter_credentials.access_token, twitter_credentials.access_token_secret)

    # api = tweepy.API(auth, wait_on_rate_limit=True)
    api = tweepy.API(auth)

    # public_tweets = api.home_timeline()
    # for tweet in public_tweets:
    #     print tweet.text

    # api = tweepy.API(auth, wait_on_rate_limit=True)
    #####United Airlines
    # Open/Create a file to append data
    # csvFile = open('ua.csv', 'a')
    #Use csv Writer
    # csvWriter = csv.writer(csvFile)

    data = {}
    counter = 0

    today = datetime.date.day
    print today

    d1 = datetime.date(2000, 2, 1) - datetime.timedelta (days = 1)
    print d1
    d1 = datetime.datetime.now() - datetime.timedelta (days = 1)
    print d1

    # # datetime.date(2000, 1, 31)
    for tweet in tweepy.Cursor(api.search, q="#disappointed",
                            lang="en").items():
        # print (tweet.created_at, tweet.text)
        dt = tweet.created_at
        # print tweet.created_at, dt.month, dt.year, dt.day
        year_month = "{:04d}-{:02d}-{:02d}".format(dt.year, dt.month, dt.day)
        # print year_month
        counter += 1
        if year_month not in data:
            counter = 0
        data[year_month] = counter
        if len(data) >= 7:
            break

    list_key = []
    for i in range(6, -1, -1):
        dt = datetime.datetime.now() - datetime.timedelta (days = i)
        print dt
        year_month = "{:04d}-{:02d}-{:02d}".format(dt.year, dt.month, dt.day)
        list_key.append(year_month)
        if year_month not in data:
            data[year_month] = 0

    # # for tweet in tweepy.Cursor(api.search, q="#wowww",
    # #                         lang="en").items():
    # #     # print (tweet.created_at, tweet.text)
    # #     dt = tweet.created_at
    # #     # print tweet.created_at, dt.month, dt.year, dt.day
    # #     year_month = "{:04d}-{:02d}-{:02d}".format(dt.year, dt.month, dt.day)
    # #     # print year_month
    # #     counter += 1
    # #     if year_month not in data:
    # #         counter = 0
    # #     data[year_month] = counter

    print data
    print len(data)
    print list_key
        # csvWriter.writerow([tweet.created_at, tweet.text.encode('utf-8')])
