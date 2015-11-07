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

router.get('/hive', function(req,res){


pool.query('SELECT * FROM Hive', function(err, rows, fields) {
  if (err) console.log(err  );
  res.json(rows);
});


})

router.post('/hive', function(req,res){


})

router.post('/hive/:id', function(req,res){
  //TODO: Update Hive
})


router.get('/apiary', function(req,res){


pool.query('SELECT * FROM Apiary', function(err, rows, fields) {
  if (err) console.log(err  );
  res.json(rows);
});

})


router.get('/apiary/:id', function(req,res){

pool.query('SELECT * FROM Apiary WHERE id = ? LIMIT 1',req.params.id, function(err, rows, fields) {
  if (err) console.log(err  );
  res.json(rows[0]);
});


})

//TODO Make recreate Hive methods for Aparies, Inspections and Harvests


router.get('/dictionary/:type',function(req,res){
  pool.query('SELECT * FROM ?? ',req.params.type, function(err, rows, fields) {
    if (err) console.log(err  );
    res.json(rows);
  });
})

router.post('/user',function(req,res){

  //TODO: Validate User params
  console.log(req.body);
  pool.query('SELECT * FROM UserRoleT where NameType = ? LIMIT 1',[req.body.role],function(err, rows, fields){
    if(err) console.log(err);
    console.log(rows);
    var prepared = [req.body.name,req.body.username,req.body.password,rows[0].IDUserRole,req.body.email,req.body.phone];
    pool.query('CALL CreateUser(?,?,?,?,?,?,0,"")',prepared,function(err,rows,fields){
      if(err) console.log(err);
    });
  });


})

module.exports = router;
