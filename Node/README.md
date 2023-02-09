# NODE

a quick refresh on  nodejs for backend

node is used to build scalable network applications

Node is a javascript runtime - this allows you to run javascript code on the machine such as my local computer without having to go to the browser, when javascript was first created, it was for the sole purpose of running in the browser, until node was discovered.

## EVENT DRIVEN

node is asynchronous event driven javascript runtime. this means that when you write code you don't try to predict the exact sequence in which every line would run. Instead you write code has a collection of smaller functions that get called in response to specific events such as network request(event-driven)

## CALLBACKS

these are functions passed into another function in javascript as an argument

## running node

if you have javascript file, you can run it by `node nameOfYourFile.js`.

here you are telling your browser to explicitly run the code using node.

### shebang line

this is the first line in the browser. it tells the OS which interpreter it should use to run the script

`#!/usr/bin/node` - this is the absolute path of the interpreter.

`#!/usr/bin/env node` - this is the relative path to the interpreter since not all operating systems have node in the bin folder.

to use shebang, you should give your file executable permissions: `chmod u+x nameOfYourFile.js`.
