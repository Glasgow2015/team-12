// This file will contain all the routes pertaining to the API

var express = require('express');
var router = express.Router();
var pool = require('../lib/database.js');
var crypto = require('crypto');

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
    var hashedPass = crypto.createHash('md5').update(req.body.password);
    var prepared = [req.body.name,req.body.username,hashedPass,rows[0].IDUserRole,req.body.email,req.body.phone];
    pool.query('CALL CreateUser(?,?,?,?,?,?)',prepared,function(err,rows,fields){
      if(err) console.log(err);
      res.status(200).end();
    });
  });
  res.status(500).end();

})

module.exports = router;
