var config = require('config');

var mysql      = require('mysql');
var pool = mysql.createPool(config.get('dbConfig'));

module.exports = pool;
