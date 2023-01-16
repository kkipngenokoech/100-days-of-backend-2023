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

## class based views

this is an alternative way of declaring views instead of using functions
