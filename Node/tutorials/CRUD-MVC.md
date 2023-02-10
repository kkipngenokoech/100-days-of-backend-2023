# CRUD

CREATE, READ, UPDATE and DELETE

These are the four basic functions that you will be building into your database driven apps. Put simply, if you are designing a CRUD interface that means that users can expect to be able to do these 4 things to items in the database

The CRUD operations roughly correlate to the HTTP methods that you can employ in an express app. This definition can be somewhat flexible, but in general create correlates to POST (or app.post() in an express app), read correlates to GET (app.get()), update to PUT (app.put()) and delete to DELETE (app.delete())

## MVC

MVC stands for Model, View and Controller.

## Models

these are the basic building blocks of your databases. SO for every entry in your DB - (books, authors). you’ll create a model that holds the details of that entry. Models define the types of information that get used by your views and controllers.

## Views

this are the components that generate the UI for your application. we are going use a templating engine that uses data supplied by a controller to display the desired information.

## Controllers

components that decide what view to display and what information is going to be put into it.
