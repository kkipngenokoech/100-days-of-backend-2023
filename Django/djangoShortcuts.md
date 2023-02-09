# DJANGO SHORTCUTS

this is a module within the django web framework that contains a number of convenience functions.

it provides an easy way to accomplish common tasks without having to write the boilerplate code.

they include:

## render()

this function is used to render an HttpResponse with contents of the rendered template.

render takes a couple of arguments - request, template_name as the required arguments, the request object is used to generate the response and the template name takes the full name of the template to use.

## redirect()

this shortcut is used to redirect the user to a different URL. it takes a single argument, the url to redirect the user to and returns an HttpResponseRedirect object.

to import this shortcut into your module you:

```python
from django.shortcuts import redirect
```

## get_object_or_404()

this is used to retrieve a single object from the database and raise Http404 if the object doesn't exist.

## get_list_or_404()

this function is similar to get_object_or_404  but this returns the list of object or raise a Http404 if no record is found.

