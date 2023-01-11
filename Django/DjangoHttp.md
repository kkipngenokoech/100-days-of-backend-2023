# DJANGO HTTP

Django uses request and response objects to pass state through the system.

When a page is requested, Django creates an HttpRequest object that contains metadata about the request. Then Django loads the appropriate view, passing the HttpRequest as the first argument to the view function. Each view is responsible for returning an HttpResponse object.

this class represents the incoming HTTP request which contains all the information about the request including the request method - post, or get or e.t.c

## HttpRequest object

### HttpRequest.scheme

this contains the scheme of the request, if it is http or https.

### HttpRequest.body

this is a bytestring. 

### HttpRequest.path

A string representing the full path to the requested page, not including the scheme, domain, or query string.

Example: "/music/bands/the_beatles/"

### HttpRequest.path_info

Under some web server configurations, the portion of the URL after the host name is split up into a script prefix portion and a path info portion. The path_info attribute always contains the path info portion of the path, no matter what web server is being used. Using this instead of path can make your code easier to move between test and deployment servers.

For example, if the WSGIScriptAlias for your application is set to "/minfo", then path might be "/minfo/music/bands/the_beatles/" and path_info would be "/music/bands/the_beatles/"

### HttpRequest.method

a string representing the HTTP METHOD used in the request. if it is a `GET` or a `POST`

### HttpRequest.POST

which is a dictionary-like object that contains all the data sent in a POST request. If a POST request was not made, request.POST will be an empty dictionary-like object.

On the other hand None is a special object in Python which represents the absence of a value or a null value. It is of NoneType.

So request.POST or None would check if request.POST is empty it returns None, otherwise it returns request.POST which contains all the data sent in a POST request.

you use this method to retrieve data send by a post method.So, if you are trying to access data from a form that is submitted using the POST method, you would use the "request.Post" method. If there is no data available or no form submitted, the value returned would be "None".
