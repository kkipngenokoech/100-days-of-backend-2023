# WIKI

## [models](models.py)

our articles manager is going to hold all the articles that we have, but only those with the is_published are going to be displayed in our front page.

we can use models.Manager to create a filter which in our case is going to return only a query of all the is_published set to true.

A custom manager can be written using is get_query_set property.

verbose_name - let's say you have a field - Article_name in your model, by default django will display Article Name in your templates, that is it will replace the _ with a space.

to override this, you can  use the `verbose_name`, and instead of having the django template render.

help_text - this acts like the placeholder. it is used to provide a brief description or explanation of the field's purpose and usage.

you can set the help_text to the field or to the specific attributes.
