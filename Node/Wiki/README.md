# LOCAL LIBRARY - WIKI

## models

we are going to use mongoose for the ORM

for the books, we are going to store the following data:

1. title
2. summary
3. author
4. genre
5. ISBN
6. unique ids
7. availability status.

we are going to have different instances/objects:

1. book
2. book instances
3. authors

![model UML](public/images/library_website_-_mongoose_express.png)

## installing mongoose

this is installed in our [package.json](package.json): `npm install mongoose`.

## SCHEMA FIELDS/types

a schema can have arbitrary numbers of fields - each one represent a field in the documents stored in MongoDB.

when declaring those fields, you give a variable name and its data type.

```any
const schema = new Schema({
    // syntax is variableName: Datatype
    name: string,
    binary: Buffer,
    living: Boolean,
    updated: {type: Date, default: Date.now()},
    age: {type: Number, min: 18, max: 65, required: true},
    mixed: Schema.Types.Mixed,
    _someId: Schema.Types.ObjectId,
    array: [],
    ofString: [String],
    nested:{ stuff: {type: String, lowercase: true, trim: true}}

})
```
