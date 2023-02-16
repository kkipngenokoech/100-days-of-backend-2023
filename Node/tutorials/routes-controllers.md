# ROUTES

## Routes Primer

this is a section  of express code that associates an HTTP verb (`get`, `post`, `put`, `delete`), a url path/pattern and a function that is called to handle the pattern.

it allows us to forward the supported requests to appropriate controller functions

controller functions then gets the requested data from the models, create an HTML page used to display this data and return to the user a view in the browser.

![model-view-controller](images/mvc_express.png)

there are several ways of creating routes:( express.Router) - this middleware as it allows us to group the route handlers for a particular part of a site together and access them using a common route-prefix.

so we are going to use the express object/application. so we always have to require this file:

`const express = require('express')`

then under the express object we need to use the router module:

`const router = express.Router()`.

from here we can now start defining our routes.

## router functions

to define a route, after requiring the express application, and getting the express.Router function of the express application, you need to use the http verbs with the router module - these http functions include;

1. post()
2. put()
3. delete()
4. options()
5. trace()
6. copy()
7. lock()
8. mkcol()
9. move()
10. purge()
11. propfind()
12. proppatch()
13. unlock()
14. report()
15. mkactivity()
16. checkout()
17. merge()
18. m-search()
19. notify()
20. subscribe()
21. unsubscribe()
22. patch()
23. search()
24. connect

so for example: a route can be defined this way:

```javascript
const express = require('express')
const router = express.Router()

router.get('/', function(req, res){
    //define whatever happens with your router here
})
```

in your router.get(), there are some parameters you pass, the first one being the path, that's the path requested.

### path

here we define a string that the incoming urlPattern should match.

### callback function

we pass a function has a parameter - this function gets called when a request is received and this request matches the route.

this callback function takes two parameters: req(the request object) and the res(response object).

you can have multiple callback functions passed as parameters into such a function.

to execute the next callback function if more than one callback functions are included we have to add the parameter next to the preceding callback function.

the callback function can take three arguements, req, res, next.

so a genuine route example is:

```javascript
const express = require('express')
const router = express.Router()

router.get('/about', function(req, res){
    res.send('hello multiverse, this is an about me page')
})
```

there are many functions in the router used to respond to the user's request:

### res.send()

this returns a string, object or arrays this is one of the methods provided by the res object.

### res.json()

returns json content

### res.sendFile()

returns a file

### res.render()

