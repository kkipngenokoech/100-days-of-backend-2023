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

1. [the authentication system](./LoginSystem/)