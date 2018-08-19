const express = require('express');
const app = express();

var port = process.env.PORT || 3000

app.get('/', function (req, res) {
  res.send('YeaOrNay')
})

app.listen(port, () => console.log('Now running on port ' + port + ''));