// very basic express server
const express = require('express');
// const path = require('path');

const app = express();
const port = process.argv[2] || 4200;

app.use(express.static(__dirname));

app.listen(port, err => {
  if (err) return console.log('cannot start server.');
  console.log(`Listening on port ${port}`);
});
