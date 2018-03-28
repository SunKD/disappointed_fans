# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.shortcuts import render
import tweepy
import twitter_credentials
import datetime

# Create your views here

def index(request):
    return render(request, 'disappointed_fan_app/index_mobile.html')
    # else:
    #     return render(request, 'disappointed_fan_app/index_desktop.html')
    twitter_hello()
    return render(request, 'disappointed_fan_app/index.html')

def process(request):
    context={
        "input": request.POST['search']
    }
    return render(request, 'disappointed_fan_app/main.html', context)

def main(request):
    return render(request, 'disappointed_fan_app/main.html')

def twitter_hello():

    # auth = tweepy.OAuthHandler(twitter_credentials.consumer_key, twitter_credentials.consumer_secret)
    # auth.set_access_token(twitter_credentials.access_token, twitter_credentials.access_token_secret)

    # api = tweepy.API(auth, wait_on_rate_limit=True)
    # # api = tweepy.API(auth)

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

    # # # datetime.date(2000, 1, 31)
    # for tweet in tweepy.Cursor(api.search, q="#football",
    #                         lang="en").items():
    #     # print (tweet.created_at, tweet.text)
    #     dt = tweet.created_at
    #     # print tweet.created_at, dt.month, dt.year, dt.day
    #     year_month = "{:04d}-{:02d}-{:02d}".format(dt.year, dt.month, dt.day)
    #     # print year_month
    #     counter += 1
    #     if year_month not in data:
    #         counter = 0
    #     data[year_month] = counter
    #     if len(data) >= 7:
    #         break

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
