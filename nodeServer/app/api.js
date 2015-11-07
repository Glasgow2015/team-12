// This file will contain all the routes pertaining to the API

var express = require('express');
var router = express.Router();
var config = require('config');

var mysql      = require('mysql');
var pool = mysql.createPool(config.get('dbConfig'));

router.use(function timeLog(req, res, next) {
  console.log('API Used Time: ', Date.now());
  next();
});

router.get('/', function(req, res) {
  res.send('Welcome to the Force Bee With You API');
});

router.get('/hive/:id', function(req, res) {


pool.query('SELECT * FROM Hive WHERE IDHive = ? LIMIT 1',[req.params.id], function(err, rows, fields) {
  if (err) console.log(err);
  res.json(rows);
});


});

router.post('/hive', function(req,res){


pool.query('SELECT * FROM Hive', function(err, rows, fields) {
  if (err) console.log(err  );
  res.json(rows);
});


})

router.post('/hive/:id', function(req,res){
  //TODO: Update Hive
})

//TODO Make recreate Hive methods for Aparies, Inspections and Harvests

module.exports = router;
