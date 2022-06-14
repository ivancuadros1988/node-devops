const express = require('express')
const app = express()
const port = 5000

require('dotenv').config()

app.get('/', (req, res) => {
  res.send(`Running App from ${process.env.FROM_ENV} ...`)
})

app.listen(port, () => {
  console.log(`Listening on port ${port}`)
})