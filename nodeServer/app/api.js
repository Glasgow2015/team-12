// This file will contain all the routes pertaining to the API

var express = require('express');
var router = express.Router();

router.use(function timeLog(req, res, next) {
  console.log('API Used Time: ', Date.now());
  next();
});

router.get('/', function(req, res) {
  res.send('Welcome to the Force Bee With You API');
});

router.get('/hive/:id', function(req, res) {
  //TODO: Get data about hives from DB return as JSON
  res.send('Bees live in a hive! Who\'d have thunk :P');
});

router.post('/hive', function(req,res){
  //TODO: Make a new Hive
})

router.post('/hive/:id', function(req,res){
  //TODO: Update Hive
})

//TODO Make recreate Hive methods for Aparies, Inspections and Harvests

module.exports = router;
