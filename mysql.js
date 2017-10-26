const mysql = require('mysql');

let con = mysql.createConnection({
  host: '192.168.99.46',
  user: '',
  password: '',
  database: 'untermstrich'
});

con.connect(err => console.log(err));
