// load HTTP module
const http = require('http')

const hostname = '127.0.0.1'
const port = 8000

// create HTTP server
const server = http.createServer(function (req, res) {
    // set the response HTTP header with HTTP status and content type
    res.writeHead(200, { 'Content-Type': 'text/plain'})

    // send the response body 'Hello Multiverse'
    res.end('Hello Multiverse\n')
})

// print a log once the server starts listening
server.listen(port, hostname, function () {
    console.log(`Server running at http://${hostname}:${port}/`)
})