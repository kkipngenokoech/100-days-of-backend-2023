# VIEWS

views are just functions that take in http requests from the urls and give back a response`<http response>`.

let say you have requested the home page that's `127.0.0.1/home`

when you go to our urls in the project level we have also defined a route to our home app:

```python
urlpatterns = [
    ...
    path("home/",include(home.urls))
    ...
]
```

that path will take you to the home app where we also defined a route, since we are requesting for the root page we are going to:

```python
urlpatterns = [
    ...
    path("",views.home,name='home')
    ...
]
```

this will take you to the home view where we are going to take in the HttpRequest and give out an HttpResponse.

in our views.py we shall define a function/method dubbed home:

```python
def home(request):
    return HttpResponse("Hello multiverse")
```

then if instead you want to render a template you are going to:

```python
def home(request):
    return render(request,"home.html")
```

for templates you have to render them.

sometimes we need to add arguments and parameters from our models or which we define it all by ourselves.

there's what we call context. contexts are template variables, to access a context you are going to use double curly brackets {{}} in your templates.

template variables are defined in your views:

```python
def home(request):
    return render(request, "home.html",{"user": "multiverser001"})
```

in your home.html template:

```html
<p>Hi there {{user}}</p>
```

will return Hi there multiverser001.

## Generic Views

these are pre-built views that provide common functionality for web applications.

this helps/lifts the heavy weight on writing the delete, update, list codes all by yourself.

types of generic views include:

1. ListView - Display a list of objects
2. DetailView - Display a detail page of a single object
3. CreateView - Display a form for creating a new object and handle form submission
4. UpdateView - Display a form for updating an existing object and handle form submission
5. DeleteView - Display a form for deleting page and handle the object deletion.

to use generic views

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

if we want to overide some inherited class attribute we can always redefine it in our child classes.

#### app_label

