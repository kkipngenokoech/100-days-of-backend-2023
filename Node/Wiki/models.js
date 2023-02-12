const mongoose = require('mongoose')

const Schema = mongoose.Schema

const SomeModelSchema = new Schema({
    a_string: String,
    a_date: Date
})

const SomeModel = mongoose.model('SomeModel', SomeModelSchema)