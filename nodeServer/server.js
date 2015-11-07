var express = require('express');
var app = express();
var bodyparser = require ('body-parser');

app.use(bodyparser.json()); // for parsing application/json
app.use(bodyparser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded

// serve static files
app.use(express.static('static'));


// send requests to API handler
var api = require("./app/api.js");
app.use("/api",api);

// send requests to Twilio handler
var twilio = require("./app/twilio.js");
app.use("/twilio",twilio);

var server = app.listen(8080, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('fbwu listening at http://%s:%s', host, port);
});
