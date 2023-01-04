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
