
// very basic express server

const express = require('express');
const path = require('path');

const app = express();

app.use(express.static(__dirname));

app.listen(process.argv[2], (err) => {
  if (err) return console.log('cannot start server.');
  console.log(`Listening on port ${process.argv[2]}`);
});
