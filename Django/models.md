# models

this is our database objects.

this is a class that represents a table in the database.

to define a table model you need to define a class with attributes:

```python
class MyTable(Models.model):
    title = models.CharField(max_length=23)
    created_at = models.DateTimeField(auto_now_add=True)
    ....
```

the above class has myTable table in the database with title attribute

sometimes whe you are defining a date attribute you want to take it automatically and update with the current timestamp, for that you are going to use an attribute called auto_now_add as shown above

## FOREIGN KEYS

sometimes we want to link two models together. to do that we always use foreign keys.

in our model field types, there's a field type known as ForeignKey.

let's say we have a post and comments models and for that we are going to write this line in our comments model:

```python
Class Comments(models.Model):
    post = models.ForeignKey(Post)
```

now our comments has a field known has post linking us to the post model.
