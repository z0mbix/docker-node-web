var http = require('http');
var os = require('os');
var port = process.env.PORT || 3000;
var host = os.hostname() || 'unknown';

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello from ' + host + ' listening on port ' + port + '\n');
}).listen(port);

console.log('Server running on port ' + port);
