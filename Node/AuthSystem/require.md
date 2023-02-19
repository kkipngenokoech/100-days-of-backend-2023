# require('module')

in our [app.js](app.js), we have required a couple of files and we are going to discuss there essence in our project.

## express

this loads the express framework for NodeJS. this helps us in writing the:

1. routes - this allows us to define routes to our web application or API
2. Middleware - this allows us to modify the request and response objects that are passed in the application's request-response cycle. Middleware can be used for handling errors, logging, authentication, and other common tasks.
3. Templating - Express supports various templating engines that allow you to render dynamic HTML pages using data from your application
4. API development - Express is often used for building RESTful APIs that provide data to other applications or web clients. Express makes it easy to define routes that handle GET, POST, PUT, and DELETE requests, and it provides tools for parsing and validating request data.
5. static files serving - Express can be used to serve static files such as images, stylesheets, and JavaScript files. You can define a static directory and use the express.static() middleware to serve files from that directory.

## path

this is a built-in module that provides utilities for working with file paths and directory paths. The path module can be used to manipulate file paths and normalize them for different operating systems.

## express-session

this module provides session management - a way to store information about a user across multiple requests and responses.

When a user visits a web application for the first time, the server creates a new session and generates a unique session ID for that user. The session ID is then stored as a cookie in the user's browser, and the server can use this ID to retrieve session data on subsequent requests.

## passport

this is an authentication middleware for nodejs web applications.

it has both username/password authentication and third-party authentication - this includes companies like Facebook, Google and Twitter.

## passport-local

Passport strategy that provides local authentication using a username and password. With passport-local, you can easily add a local authentication mechanism to your application and authenticate users using a username and password stored in your application's database.
