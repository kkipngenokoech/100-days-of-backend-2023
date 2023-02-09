# CREATING A BASIC WEBSITE IN NODEJS

## prerequisite

you should have [node]( https://nodejs.org/) installed already on your computer

a directory in which you are going to build your project.

## initialize your project

run the following command to initialize your project.

`npm init`

this command will creates a `package.json`. this is an important file in `Node.js`. it contains information about your project, including its dependecies and scripts.

When you run npm init, you will be prompted to enter information about your project, such as its name, version, description, and entry point. For most of these fields, you can simply press enter to accept the default value. Once you've completed the prompts, a package.json file will be created in your project's directory with the information you entered.

## installing dependencies and packages

we are going to install express - a popular framework for building websites in `Node.js`.

we are also including the `ejs` template engine to render our pages.

for that we are going to:
`npm install ejs express`.
