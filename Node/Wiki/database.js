const mongoose = require('mongoose')
mongoose.set('strictQuery', false)
const mongoDB = 'mongodb://localhost/firstMongoDatabase'

main().catch(err => console.error(err))
async function main() {
    await mongoose.connect(mongoDB)
}