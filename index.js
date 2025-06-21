const http = require('http');

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200);
  res.end('Hello from Dockerized Node.js!');
});

server.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});

