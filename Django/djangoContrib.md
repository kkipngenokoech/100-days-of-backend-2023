# DJANGO.CONTRIB

this code lives django/contrib.

this is a package in python that contains some number of utility modules and libraries that are included in django.

it contains a number of reusable applications such as authentication and admin functionality.

to use this apps you will need to include them in a list of installed apps in our settings.py then you run the migrations to create the necessary apps in the database.

some of these utility modules:

1. admin
2. auth
3. contenttypes
4. sessions
5. messages
6. staticfiles

## admin

A module for creating a powerful and flexible web-based interface for managing your django models. this is normally an automatic interface created by django.

it provides a quick, model-centric  interface where trusted users can manage content in your site.

this is enabled automatically when we startproject.

## auth

a module for handling user authentication adn authorization

### django.contrib.auth.decorators

@login_required - if the user is not logged in, it has to redirect someone to settings.LOGIN_URL where it will find the path(url) to follow.

after the user is signed in, by default it should redirect you to the page you want to access.

@permission_required(permission): this decorator checks if the user has specified permission before accessing the view, if the user has no permission, it will send a 403 permission error.

@user_passes_test(test_func): it checks if the user passes the test function before accessing the view. it returns true if the user is allowed to access the view.

@method_decorator(decorator, name): this decorator can be used to apply a decorator to a specific method in a class based view.

## contenttypes

a module for handling content types i.e texts, images

## sessions

a module for handling user sessions

## messages

a module for displaying messages to users.

@fall_silently - this is an optional parameter passed to the messages such that when set to true, incase our message is not displayed because of an error, our application will continue working without raising an issue.

## staticfiles

a module for displaying static files, this includes the css, javascript, and image files
