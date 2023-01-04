# DJANGO FRAMEWORK

## VIRTUAL ENVIRONMENTS

for any django system, one must first start by creating an environment for it.

there are many ways of creating a virtual environment but for this projects we are going to use `virtualenv`

to use virtualenv in your projects you must have it installed in your system and a way to do that is by using pip manager
`pip3 install virtualenv`

once this is installed you can then proceed to install/create environments of your choice 1.e for the authentication system you:

first create a directory  - `mkdir LoginSystem`

then you cd into that directory and create a virtual environment using the `virtualenv` command:
`virtualenv loginsystem` where loginsystem is the name of the environment.

then the next step is to activate your environment `loginsystem/bin/activate` command

from here you are then free to set up your project by installing a django application.

when you want to deactivate your environment you run the command deactivate

This will deactivate the virtual environment, and you will be back to the global Python environment.

## PROJECTS

## SETTING UP A DJANGO PROJECT

The prerequisites of using this commands is that you have already setup your environment and you can activate it and deactivate it at this particular point in time.

## django-admin startproject

so the first step in a django application is to always setup a blueprint/framework of your django, that' the entry point of your system, and this done using this command `django-admin startproject NameOfYourProject .`

that last dot there is paramount so as to avoid creation of a lot of unnecessary sub-folders.

this command will always create one folder with about 5 python files:

[manage.py](./LoginSystem/manage.py)

## manage.py

this is a command-line utility that will allow us to interact with our django application/project.

1. [__init__.py](./LoginSystem/AuthLoginSystem/__init__.py)
2. [asgi.py](./LoginSystem/AuthLogin/../AuthLoginSystem/asgi.py)
3. [settings.py](./LoginSystem/settings.py)
4. [urls.py](LoginSystem/AuthLoginSystem/urls.py)
5. [wsgi.py](LoginSystem/AuthLoginSystem/wsgi.py)

### __init__.py

this is an empty file. it tells python that this directory should be treated has a python package.

## asgi.py

asynchronous server gateway interface - it defines how web applications are going to communicate with web servers.

it is similar to wsgi(web server gateway interface) which also fuctions the same. it is only compatible with async-only web based servers.

## settings.py

this contains settings for your django project. i.e database configuration, installed apps ...

## urls.py

url declarations for your django project, it's where the routing happens.

## wsgi.py

this is an entry point for wsgi-compatible web servers to serve your django project.

when you want to redirect to another url after a successful save in django, let's say you are creating a new object, you go to where you have defined your views, to the view we are redirecting from and then you add the line `success_url = reverse_lazy("the url").

1. [the authentication system](./LoginSystem/)
