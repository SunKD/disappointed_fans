# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# importing regex for validations
import re
# imporing unit tests
import unittest

# regex for user input:
SEARCH_DATA_RE = re.compile(r'^[a-zA-Z0-9_]*$')


class UserSearchManager(models.Manager):
    # manager for user inputted words

    def user_input_validator(self, postData):
        # used to validate the words that users enter
        validate_response = {
            'status': False,
            'errors': {}
        }
        #changes for multi keyword conflict
        if "index_curse" in postData:
            search_data = postData["index_curse"]
        else: 
            search_data = postData["main_curse"]
        print 'search Keyword - ', search_data
        errors = {}
        print "in user_input_validator"
        if len(search_data) < 1:
            errors['need_data'] = "Please enter a valid keyword - must be at least 1 character long."
        elif not SEARCH_DATA_RE.match(search_data):
            errors['bad_characters'] = "Please enter a valid keyword - no special characters and leave off the #."
        if len(search_data) > 100:
            errors['many_data'] = "Please enter a valid keyword - something less than 100 characters"
        print 'Errors - ', errors

        if len(errors):
            validate_response['errors'] = errors
        else:
            validate_response['status'] = True
            print "successful validation of user entry"
        print "Validate Response Object", validate_response
        return validate_response

    def reject_word(self):
        # used to check if word is already in DB as rejected word based on the "allowed" stored data attribute. Boolean.
        pass




class UserSearch(models.Model):
    # used to store the
    search_data = models.CharField(max_length=100)
    allowed = models.SmallIntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    team = models.ForeignKey('Team', related_name='searches')
    objects = UserSearchManager()
    def __repr__(self):
        return "Search Desc = keyword: {} - Allowed? {} - created_at: {}".format(self.search_data, self.allowed, self.created_at)

class Sport(models.Model):
    name = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    # objects = SportManager()
    def __repr__(self):
        return "Sport = name: {} - created_at: {}".format(self.name, self.created_at)

class Team(models.Model):
    name = models.CharField(max_length=255)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    sport = models.ForeignKey('Sport', related_name='teams')
    # objects = TeamManager()
    def __repr__(self):
        return "Team = name: {} - created_at: {}".format(self.name, self.created_at)