# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# importing regex for validations
import re


class WordManager(models.Manager):
    # manager for user inputted words

    def user_input_validator(self):
        # used to validate the words that users enter
        pass

    def reject_word(self):
        # used to check if word is already in DB as rejected word based on the "allowed" stored data attribute. Boolean.
        pass









class User_Search(models.Model):
    # used to store the
    search_data = models.CharField(max_length=100)
    allowed = models.SmallIntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    def __repr__(self):
        return "Word Desc = word: {} - created_at: {}".format(self.word, self.created_at)