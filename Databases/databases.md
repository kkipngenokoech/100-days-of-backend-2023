# DATABASES

there are two common ways of interacting with databases:

1. using databases native query language - i.e sql
2. using object data model, or object relational model(ORM), which represents the website's data has objects, which are then mapped to underlying databases.

## ORM

this is a programming technique used to map objects in a software application to the data stored in a relational database.

The main purpose of ORM is to abstract away the underlying database details, allowing the developers to interact with the database through a high-level, object-oriented API. This makes it possible to write database-agnostic code that can work with different types of databases (such as MySQL, PostgreSQL, SQLite, etc.) without having to worry about the differences in the SQL syntax and other low-level details.

ORMs also provide features such as database migrations, connection management, transaction management, and more, making it easier for developers to interact with the database in a productive and efficient way.

## NODE

to use ORM/ODM in node, the npm package manager has a couple of ways to do so:

### [Mongoose](https://www.npmjs.com/package/mongoose)

Mongoose is mongoDB object modelleing tool designed to work with asynchronous enviroment.

### [Waterline](https://www.npmjs.com/package/waterline)

this is an ORM extracted from Express-based sails web framework. It provides a uniform api for accessing different databases - Redis, MySQL, LDAP, MongoDB & Postgres.

### [Bookshelf](https://www.npmjs.com/package/bookshelf)

Features both promise-based and traditional callback interfaces, providing transaction support, eager/nested-eager relation loading, polymorphic associations, and support for one-to-one, one-to-many, and many-to-many relations. Works with PostgreSQL, MySQL, and SQLite3.

### [Objection](https://www.npmjs.com/package/objection)

Makes it as easy as possible to use the full power of SQL and the underlying database engine (supports SQLite3, Postgres, and MySQL).

### [Sequelize](https://www.npmjs.com/package/sequelize)

is a promise-based ORM for Node.js and io.js. It supports the dialects PostgreSQL, MySQL, MariaDB, SQLite, and MSSQL and features solid transaction support, relations, read replication and more.

### [Node ORM2](https://node-orm.readthedocs.io/en/latest/)

is an Object Relationship Manager for NodeJS. It supports MySQL, SQLite, and Progress, helping to work with the database using an object-oriented approach.

### [GraphQl](https://graphql.org/)

Primarily a query language for restful APIs, GraphQL is very popular, and has features available for reading data from databases.
