var http = require('http');

//step 2) start the server
http.createServer(function (req, res) {

  //set an HTTP header of 200 and the meta type
  res.writeHead(200, {'Content-Type': 'text/plain'});

  //write something to the request and end it
  res.end('Node Hello World! The time is '+Date.now());

}).listen(3000);
