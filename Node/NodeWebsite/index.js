const express = require('express')
const app = express()

app.set('view engine', 'ejs')

app.get('/', (req, res) => {
    res.render('index')
})

app.get('/about',(req, res) => {
    res.render('about')
})

app.get('/contact-me',(req, res) => {
    res.render('contact-me')
})

app.listen(3000, () => {
    console.log('Website is up and running on http://localhost:3000')
})