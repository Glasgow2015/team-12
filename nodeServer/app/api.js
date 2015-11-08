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

router.get("/:type",function(req,res){
    var type = req.params.type.capitalize();
    var table = type+"View";
    pool.query('SELECT * FROM ??;',[table], function(err, rows, fields) {
      if (err) console.log(err);
      res.json(rows);
    });
})

router.get("/:type/:id",function(req,res){
  var type = req.params.type.capitalize();
  var table = type+"View";
  var ID = "ID"+type;
  pool.query('SELECT * FROM ?? WHERE ?? = ? LIMIT 1;',[table,ID,req.params.id], function(err, rows, fields) {
    if (err) console.log(err);
    res.json(rows[0]);
  });
})

router.post('/hive', function(req, res) {


})

router.post('/hive/:id', function(req, res) {
  //TODO: Update Hive
})

router.post('/apiary', function(req, res) {

  //var prepared = [req.body.name,req.body.lat,req.body.long,req.body.datecreated,harvmonth,environment,access];
  var prepared = ["Rob", 1, 1, 1, "1,1,1,1,1,1,1,1,1,1,1,1",
    "1,1,1,1,1,1,1,1,1",
    "1,1,1,1,1,1,1,1"
  ];
  pool.query('CALL CreateApiary(?,?,?,?,?,?,?)', prepared, function(err, rows, fields) {
    if (err) console.log(err);
    res.status(200).end();
  });

  res.status(500).end();

})


router.post('/inspection', function(req, res) {


  console.log(req.body);

  for(var n in req.body) {
   if(req.body[n] == 'false') req.body[n] = 0;
   if(req.body[n] == 'true') req.body[n] = 1;
   if(n == "DateInspection"){
     req.body[n] = Date.parse(req.body[n]);
   }else{req.body[n] = parseInt(req.body[n]);}
   // you can get the value like this: myObject[propertyName]
  }

  console.log(req.body);
  var prepared = [req.body.IDHive, req.body.DateInspection, (req.body.WeatherCondT+1), (req.body.HiveStateT+1), (req.body.ColStrengthT+1), (req.body.HiveTemper+1), req.body.QueenCellInBrood,
     (req.body.HoneyStoresT+1)+","+(  req.body.PollenStoresT+1), (req.body.SmallBeeT+1)+","+(req.body.VarraoT+1)+","+req.body.Ant+","+req.body.Brood, (req.body.HiveCondT+1), (req.body.BeeToolsCondT+1)];
  console.log(prepared);+1)
  pool.query('CALL CreateInspection(?,?,?,?,?,?,?,?,?,?,?)', prepared, function(err, rows, fields) {
    console.log("Stuff happened");
    if (err) console.log(err);
    res.status(200).end();
  });
  //res.status(500).end();



})

router.get('/dictionary/:type', function(req, res) {
  if (req.params.type.indexOf('Dict', req.params.type.length - 'Dict'.length) !== -1) {
    pool.query('SELECT * FROM ?? ', req.params.type, function(err, rows, fields) {
      if (err) console.log(err);
      res.json(rows);
    });
  } else {
    res.json({});
  }
})

router.post('/user', function(req, res) {

  //TODO: Validate User params
  console.log(req.body);
  pool.query('SELECT * FROM UserRoleDict where NameType =  ? LIMIT 1', [req.body.role], function(err, rows, fields) {
    if (err) console.log(err);
    console.log(rows);
    var hashedPass = crypto.createHash('md5').update(req.body.password);
    var prepared = [req.body.name, req.body.username, hashedPass, rows[0].IDUserRole, req.body.email, req.body.phone];
    pool.query('CALL CreateUser(?,?,?,?,?,?)', prepared, function(err, rows, fields) {

      if (err) console.log(err);
      res.status(200).end();
    });
  });
  res.status(500).end();

});


module.exports = router;
