// This is day 1
// This is day 2
// This is day 3
// This is day 4
// This is day 5
// This is day 6
// This is day 7
const http = require('http')

const server = http.createServer((req, res) => {
  console.log(req.url)
  res.end('Hello World!')
})

server.listen(5000)
