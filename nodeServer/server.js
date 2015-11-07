var express = require('express');
var app = express();



// serve static files
app.use(express.static('static'));


// send requests to API handler
var api = require("./app/api.js");
app.use("/api",api);  

var server = app.listen(8080, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('fbwu listening at http://%s:%s', host, port);
});
