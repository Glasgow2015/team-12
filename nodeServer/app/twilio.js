// This file will contain all the routes pertaining to the API

var express = require('express');
var router = express.Router();
var twilio = require('twilio');

router.post('/', function(req,res){
  var twiml = new twilio.TwimlResponse();
   twiml.message('Hello World!');

   res.writeHead(200, {'Content-Type': 'text/xml'});
   res.end(twiml.toString());
})

//TODO Make recreate Hive methods for Aparies, Inspections and Harvests

module.exports = router;
