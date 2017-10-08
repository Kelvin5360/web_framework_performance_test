const express = require('express')
const app = express()

app.get('/', function (req, res) {
  res.send('Express Hello World! The time is '+Date.now())
})

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})
