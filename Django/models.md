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
4. 