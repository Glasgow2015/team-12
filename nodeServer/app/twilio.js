// This file will contain all the routes pertaining to the API

var express = require('express');
var router = express.Router();
var twilio = require('twilio');
var pool = require('../lib/database.js')

router.post('/', function(req,res){
  var twiml = new twilio.TwimlResponse();

  var request = req.body.Body;
  var commands = request.split(" ");
  var done = function(twiml,res){
    console.log(twiml.toString());

    res.writeHead(200, {'Content-Type': 'text/xml'});
    res.end(twiml.toString());
  };
  console.log("SMS Received:" + req.body.Body);
  console.log(JSON.stringify(req.body));


  switch (commands.shift()){
    case "inspection":
      twiml = executeInspection(commands,twiml,done,res);
      break;
      default: console.log("Didnt work");
  }



})

function executeInspection(commands,twiml,done,res){
   switch (commands.shift()) {
     case "new": twiml.message("Im gonna make a new inspection with the rest " + commands.join(" "));
     var prepared = JSON.parse(commands.join(" "));
     pool.query('CALL CreateInspection(?,?,?,?,?,?,?,?,?,?,?)', prepared, function(err, rows, fields) {
       if (err) console.log(err);
       twiml.message("It Succeeded :D");
       done(twiml,res);
     });
       break;
     default:

   }
}


//TODO Make recreate Hive methods for Aparies, Inspections and Harvests

module.exports = router;
