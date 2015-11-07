// This file will contain all the routes pertaining to the API

var express = require('express');
var router = express.Router();
var twilio = require('twilio');
var data = require('../lib/database.js')

router.post('/', function(req,res){
  var twiml = new twilio.TwimlResponse();

  var request = req.body.Body;
  var commands = request.split(" ");
  console.log(commands);
  switch (commands[0]){
    case "inspection":
      executeInspection(commands.shift(),twiml);
      break;
      default: console.log("Didnt work");
  }

   //twiml.message(req.body.Body);
   console.log("SMS Received:" + req.body.Body);
   console.log(JSON.stringify(req.body));
   console.log(twiml.toString());

   res.writeHead(200, {'Content-Type': 'text/xml'});
   res.end(twiml.toString());
})

function executeInspection(commands,twiml){
   switch (commands[0]) {
     case "new": twiml.message("Im gonna make a new inspection with the rest" + commands.shift().join());
     console.log("WORKED!");

       break;
     default:

   }
}


//TODO Make recreate Hive methods for Aparies, Inspections and Harvests

module.exports = router;
