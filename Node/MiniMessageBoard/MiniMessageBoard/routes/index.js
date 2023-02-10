var express = require('express');
var router = express.Router();

const messages = [
  {
    text: 'Hi there!',
    user: 'multiverser001',
    added: new Date()
  },
  {
    text: 'Holla Multiverse',
    user: 'multiverser002',
    added: new Date()
  }
]

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Mini Messageboard', messages: messages })
})

/* get new message form */
router.get('/new', function(req, res){
  res.render('form', { title: 'New Message'})
})

/* receive the filled form */
router.post('/new', function(req, res){
  messages.push({text: req.body.message, user: req.body.author, added: new Date()})
  console.log(messages)
})
module.exports = router;
