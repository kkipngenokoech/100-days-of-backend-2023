# models

this is our database objects.

this is a class that represents a table in the database. Each model maps to one single database table.

to define a table model you need to define a class with attributes, each attribute of the model represents a database field:

id's that is the primary keys are normally auto-generated but this behavior can be overridden.

we always need to import the `django.db.models.Model`.

```python
class MyTable(Models.model):
    title = models.CharField(max_length=23)
    created_at = models.DateTimeField(auto_now_add=True)
    ....
```

the above class has myTable table in the database with title attribute

sometimes whe you are defining a date attribute you want to take it automatically and update with the current timestamp, for that you are going to use an attribute called auto_now_add as shown above

## FOREIGN KEYS

sometimes we want to link two models together. to do that we always use foreign keys.

in our model field types, there's a field type known as ForeignKey.

let's say we have a post and comments models and for that we are going to write this line in our comments model:

```python
Class Comments(models.Model):
    post = models.ForeignKey(Post)
```

now our comments has a field known has post linking us to the post model.

## INSTALLED_APPS

every other time you create a python django app, you need to add it to the list of installed apps in our django project level directory as this would allow us to use the models we have created.

after that there are normally two important steps:

```python
python3 manage.py makemigrations
python3 manage.py migrate
```

## fields

these are the attributes of our models.

this are the characteristics, which include:

for a person we can say:

1. name
2. age
3. year
4. faculty

to define a model with fields:

```python
# myapp.models
from django.db import models

class Person(models.Model):
    FirstName = models.charField(max_length=25)
    secondName = models.charField()
```

### [field types](https://docs.djangoproject.com/en/4.1/ref/models/fields/#model-field-types)

when we are declaring fields, they obviously would have different data types and formats and this is what we categorize them as field types.

this normally tells the database which kind of data it should store.

### field options

these are the arguments we pass into our field option types. this are the subclasses of the field types.

it includes the null, blank, choices...

1. null - when set to true, django can store null values in the field - this is database related
2. blank - if true, the field is allowed to be blank - this validation-related
3. choices - this is where the user can choose an option from a list of options. it normally has two fields(tuple), one which is stored in the database and one which the user uses during the selection.

## def __unicode__(self):

this is a special method in python.it is used to represent our method looks like in a unicode string, it is used to return a unicode string instead of a regular ascii string.

The __unicode__() method is called when the built-in unicode() function is used to convert an object to a Unicode string, or when the %u format specifier is used in a string formatting operation.

## get_object_or_404()

this is a django method used to retrieve a single object from the database, or raise a 404 error if the object doesn't exist.

this is normally used in the views, when the primary key used to identify te object has been or will be passed in the url.

so the parameters you pass is the model name and the unique identifier to help you isolate the models.

its code lives in django.shortcuts.

## get_list_or_404()

this is used to get list of objects in the database.

here you pass a parameter like published=True, it returns a list of published objects in the model.

## class meta

this is a field used to change the behavior of our model fields.

this is basically a inner class of our model class. it is used in changing things like:

1. verbose_name
2. order options

this is a completely option class to add into your models

```python
class Student(models.Model):
    class meta:
        option...
```

### model meta options

#### abstract

if abstract = True, it means this model will be an abstract base class. this means that this class is not going to be used to create methods but it will be inherited by other classes

the fields for this class will be added to the child classes.

this model then won't be used to create a database table.

this is normally used when we have like a common set of characteristics exists over different models.

```python
#models.py
from django.db import models
class Vehicle(models.Model):
    brand = models.charField(max_length=100)
    class meta:
        abstract = True
class Car(Vehicle):
    doors = models.PositiveIntegerField()
class Jet(Vehicle):
    wingType = models.CharField(max_length=30)
class MotorBike(Vehicle):
    pass
```

if we want to override some inherited class attribute we can always redefine it in our child classes.

#### app_label

if a model is defined outside the applications in INSTALLED_APPS then you must declare which app it belongs and this is where you do so:

```python
class meta:
    app_label = "core"
```

that means the model class defined above belongs to the core app in the list of our installed apps.

#### verbose_name

this gives your models a human readable name, this is what will be displayed on your templates.

if you define your model class meta with a verbose name that's how your model will be named when being declared and used in other areas of your code.

#### ordering

this is used to change the order of your model fields.

```python
class Meta:
    ordering = [-1]
```

this will reverse the order of your model fields.

#### proxy

if we add proxy = True  to our model which subclasses another model then it will be treated as a proxy model.

A proxy model acts as an interface between the user and the actual model.

it is used to modify or extend the behavior of the existing models without changing the original  models code.

it can have it's own methods, fields and managers.

it can also override the fields methods and managers of the original model

```python
...
class Meta:
    proxy = True

...
```

#### permissions

if there's any extra permissions you want to include in your models you can add them here, add, delete view permissions are normally added automatically.

#### db_table

this is used to override the db_table name in your models.

#### get_latest_by

It returns the latest object in the table based on the given field, used for typically DateField, DateTimeField, or IntegerField.
