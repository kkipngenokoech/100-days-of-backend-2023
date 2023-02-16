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
