const express = require('express')
const router = express.Router()

/* home page route*/
router.get('/', function(req, res){
    res.send('Wiki Home page')
})