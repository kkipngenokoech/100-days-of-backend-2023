# MONGO DATABASE

to manipulate mongo db in our node js project we can use this line:

`var mongo = require('mongodb')`

the above line of code, allows the program to interact with the mongo database.

## CREATING A MONGODB DATABASE

to create a database in mongoDB, start by creating a mongoClient Object, then specify a connection url with the correct ip addresses and the name of the database you want to create.

```javascript
var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://localhost:27017/mydb";

MongoClient.connect(url, function(err, db) {
  if (err) throw err;
  console.log("Database created!");
  db.close();
});
```
