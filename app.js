const http = require("http");
const os = require("os");

const port = process.env.PORT || 3000;
const host = os.hostname() || "unknown";

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain");
  res.end("Hello from " + host + " listening on port " + port + "\n");
});

server.listen(port, host, () => {
  console.log(`Server running at http://${host}:${port}/`);
});
