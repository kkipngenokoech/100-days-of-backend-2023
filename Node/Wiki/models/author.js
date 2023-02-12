const mongoose = require('mongoose')
const Schema = mongoose.Schema

const AuthorSchema = new Schema ({
    firstName: {type: String, required: true, maxLength: 100},
    familyName: {type: String, required: true, maxLength: 100},
    dateOfBirth: {type: Date},
    date_of_death: {type: Date}
})

AuthorSchema.virtual('name').get(function(){
    let fullName = ""
    if (this.firstName && this.familyName){
        fullName = `${this.familyName}, ${this.firstName}`
    }

    if (!this.firstName || this.familyName){
        fullName = ""
    }

    return fullName
})

AuthorSchema.virtual('url').get(function(){
    return `/catalog/author/${this._id}`
})


module.exports = mongoose.model('Author', AuthorSchema)