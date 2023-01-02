# AUTHENTICATION

here we are going to learn about authentication with django.

Django has  a built-in system for handling user accounts it includes views, forms and templates for handling user registration and password management.

it comes with user accounts, permission, groups and cookie-based sessions.

it handles both authentication and authorization.

the auth system consist of:

1. Users
2. Permissions - yes/no
3. Groups
4. configurable password hashing system
5. forms and view tools for logging in users or restricting content
6. a pluggable backend system

Authentication is bundle to `django.contrib.auth`.

django.contrib.auth and django.contrib.contenttypes are supoosed to be found in the list of installed applications in your [settings.py](./AuthLoginSystem/settings.py)

## django.contrib.auth

to use it in your application it should be included in our `INSTALLED_APPS` list in our [project's settings](./AuthLoginSystem/settings.py)

by default all this configurations are normally pre-installed when you run the command `django-admin startproject NameOfYourApplication .`

it contains the core of the authentication  framework and its default models.

## django.contrib.contenttypes

this allows permissions to be associated with models we create.

it helps track all the models installed in our django project.

And then in our middleware section we  need SessionMiddleware to help us manage sessions across the requests.

we also need AuthenticationMiddleware to associate users with requests using sessions.

when you have checked if all this modules are found in the [settings.py](AuthLoginSystem/settings.py) of our project, then we can do a migration.

`python manage.py migrate`

## URLS

the next step is to route your backend, that is defining your urls. url is what you normally see in your browser.

every webpage must have its own unique URL so that our application will know what to share with our users when they visit a url.

in our [urls.py](AuthLoginSystem/urls.py), we have defined a path `path("login/",auth_views.LoginView.as_view(),name='login')`

LoginView will attempt to render registration/login.html  that means you have to create a templates directory and registration sub-folder.

we need to tell our system how to locate our templates since we have added a folder for it.
