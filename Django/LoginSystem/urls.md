# urls in django

this controls our website's points of entry.

all incoming urls will be matched with the regexes in the urlpatterns and vew the corresponding first match will get to handle the request.

if a request match is not found, then it will return a 404 error page.

when someone/ or you for that matter visits this url `http://127.0.0.1:8000/admin/`, this part `http://127.0.0.1:8000/` will first be stripped off since it is the local host entry point, and so what we are interested at this particular point is the `/admin/`.

so our request will be forwarded to the url that has `/admin`

a typical url config looks like this: `r`regex`,<view_function>,<arg_dictionary>`

urls are normally supposed to map URLS to views.

so like `path("",views.index, name="index")`, this maps the home request to  the index views.

as by now you know that django is made up of multiple apps, and so we need a way to manage our urls, and therefore to provide modularity, we will tell our project level url to reroute to the urls found in our app when a request is made, we don't have to hard-code all of our urls in the project level url

so when you check in our project level url you will establish that:

```python
path("admin/",admin.site.urls)
```

this tells our website request that if you want anything to do with admin and requests to there we are going to have to redirect you to admin.site.urls for further instructions.

```python
path("cdlibrary/",include("cdlibrary,urls"))
```

likewise, this tells our website request that if you want something to do with cdlibrary we are going to redirect you to cdlibrary.urls for further instructions.

this means /cdlibrary/ will bring you to the cdlibrary.urls

the purpose why we are giving names to our urls is so that it makes it easy for us to route into it in our templates incase we want to add links to this routes.

i.e in our templates:

```html
<p><a href = "{% url 'login' %}">login</a></p>
```

that is how we are going to route to the login page, since in our project level url there's a url we have added the name "login"
