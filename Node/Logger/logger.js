const myLogger = function(req, res, next){
    console.log('Request IP: '+req.ip)
    console.log('Request Method: '+req.method)
    console.log('Request date: '+new Date())

    next()
}

app.use(myLogger)