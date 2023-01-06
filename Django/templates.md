# templates

django is a web framework and thus needs a way to generate html dynamically.

A template consist of the static parts of the desired webpage and some special syntax of describing how dynamic content will be inserted.

it is part of the MVT - that is to say the model view template in our MVT framework.

right here we are going to learn about the templates.

in django, templates are used to generate html,xml or other text formats that are then returned to the user as the http response.

Template tags are special syntax in Django templates that are used to insert dynamic content into the template. There are several types of template tags, including {% %} tags, which are used to control the flow of the template, and {{ }} tags, which are used to output the value of a variable or expression.

## checking if the models we are using already has data

to check if the model we are about render, let's say posts already contained objects, we use the `{% if posts.all %}`

and if two models are linked using foreign key and you want to check if the child has some objects too you might want to use `{% if posts.comments_set.all %}`, this tells you about the comments present for a particular post.
