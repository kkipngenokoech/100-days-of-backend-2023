# EXPRESS JS

Express.js is a fast, flexible, and minimal Node.js web application framework that provides a robust set of features for building single-page, multi-page, and hybrid web applications. It is built on top of Node.js and is designed to simplify the process of building web applications.

## WHAT DOES EXPRESS JS DOES

1. It write handlers for request with HTTP verbs at different URL paths(routes).
2. Integrate with 'views' rendering engines in order to generate responses by inserting data into templates.
3. Set common web application settings like the port to use for connecting and the location of templates that are used for rendering the response.
4. Add additional request processing 'middleware' at any point within the request handling pipeline.

## TEMPLATING ENGINE

this is a tool that allows you to insert variables and simple logic into your views, i.e an header that updates with the actual user's name once they've logged in, something that is not possible in plain HTML.

you can use either `pug` or `ejs`.

## MIDDLEWARE

A middleware is just a plain JavaScript function that express will call for you between the time it receives a network request and the time it fires off a response.
(it is a function that sits in the middle of the request and the response.)

it is possible and common to write your own middleware functions. middleware functions are just plain JavaScript functions with a specific function signature.

three middleware function arguments: `req`, `res` and `next`.

these are just variables and so you can just pass anything, it's a convention though to use `req`, `res` and `next`.

i.e

```javascript
function(req, res, next) {
    //do stuff
}
```

### REQ/REQUEST

this is an object that has a data about the incoming request such as:

1. exact URL
2. parameters in the URL
3. body of the request

### RES/RESPONSE

This is an object that represents the response that Express is going to send back to the user.

Typically, you use the information in the req to determine what you’re going to do with the res by calling res.send() or another method on the object.

### NEXT

this is a function that you see a little less often. if you are writing or using some middleware that does not send a response back to the User's client then you must call the `next` function at the end of your middleware function.

The next function simply tells express to move to the next middleware in the stack, but if you forget to call it then your app will pause and nothing will happen!

## app.use()

this is how you load your middleware function into express so that it knows how to use it.

## HOW TO USE EXPRESS JS Generator

you have to have express js installed `npm install -g express-generator`

this express generator has a number of options/flags to pass you can see this using the flags `--help` or `-h`.

1. create a new directory for your project and navigate to: `mkdir Multiverse` and cd into it `cd Multiverse`.
2. then run express generator expressing the templating engine you want to use :- i.e ejs, pug, hbs. `express --view=ejs Multiverse`. This would cause the express generator to create a subfolder called Multiverse, if you don't want that effect you can always leave out the Multiverse part.
3. cd into that Multiverse created and then `npm install` - this is used to install dependencies.
4. and then `npm start`.
5. navigate into `http://127.0.0.1:3000/`.

### configuring template engines

has you have noticed when we were running the command express, we passed a flag `--view`, this allowed us to specify the templating engine we are going to use.

as noted earlier, there are a lot of templating engines out here:

1. ejs - express js
2. Hbs
3. Pug(Jade)
4. Twig
5. Vash

if you don't specify the options, it chooses jade by default.
