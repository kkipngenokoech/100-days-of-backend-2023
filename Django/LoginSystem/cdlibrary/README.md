# CD LIBRARY APP

## [model](./models.py)

in our [models.py](models.py), we are going to define a class with properties of the characteristics we want our model/object to have.

when you look at our [models.py](models.py), you will see that the very first line there is `from django.db import  models`

### django.db import models

this is a module in the django web framework that contains classes for defining and working with the database models in Django.

this will help you in defining your models as you can see that we have used in the class CD

all models should be as subclass of django.db.models.Model

### model creation

when we want to create a model we first define a class with the model name and inherit from the Models.model i.e

`class CD(models.Model):`

then having inherited the django models, you can start defining the fields/attributes of your model.

if you look at our CD class, you will see that we have defined a number of fields i.e the artist, title, genre, description and date

`title = models.CharField(max_length=255) - such a statement imposes constrains on the title field - it will be an alphanumeric field with a maximum of only 255 characters.

the CharField helps us to impose constrains on the kind of data type we are expecting in our field

the difference between CharField and TextField is that CharField requires that you include the max_length attribute whereas in textField you have the freedom to write has many characters as possible.

`description = models.TextField(null=True, blank=True)`

null and blank is true arguments makes this field optional, so it is not a must for someone to fill this field.

here let's now run a migration to create the necessary databases and fields

N/B: every other time we changes to our INSTALLED_APPS, it is always a nice idea to make migrations to our database.

```python
python3 manage.py makemigrations
#apply the migrations
python3 manage.py migrate
```
