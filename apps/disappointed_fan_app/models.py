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
        # validation  -
        search_data = postData['curse']
        errors = {}
        if len(search_data):
            errors['need_data'] = "Please enter a valid keyword - must be at least 1 character long."
        elif not SEARCH_DATA_RE.match(search_data):
            errors['bad_characters'] = "Please enter a valid keyword - no special characters and leave off the #."
        if len(search_data) > 100:
            errors['many_data'] = "Please enter a valid keyword - something less than 100 characters"
        else:
            print "successful validation of user entry"
            user_data = {
                'search_data': search_data,
                'sport': postData['sport'],
                'team': postData['team']
            }
            return user_data

    def reject_word(self):
        # used to check if word is already in DB as rejected word based on the "allowed" stored data attribute. Boolean.
        pass




class UserSearch(models.Model):
    # used to store the
    search_data = models.CharField(max_length=100)
    allowed = models.SmallIntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    objects = UserSearchManager
    def __repr__(self):
        return "Word Desc = word: {} - Allowed? {} - created_at: {}".format(self.search_data, self.allowed, self.created_at)