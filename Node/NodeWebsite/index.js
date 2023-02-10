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

app.use(function(req, res, next){
    res.status(404).render('404')
})

app.listen(3000, () => {
    console.log('Website is up and running on http://localhost:3000')
})