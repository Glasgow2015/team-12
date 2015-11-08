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

// router.get('/hive', function(req, res) {
//
//   pool.query('SELECT * FROM HiveView', function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows);
//   });
//
//
// })
//
// router.get('/hive/:id', function(req, res) {
//
//
//   pool.query('SELECT * FROM HiveView WHERE IDHive = ? LIMIT 1', [req.params.id], function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows[0]);
//   });
//
//
// });



router.post('/hive', function(req, res) {


})

router.post('/hive/:id', function(req, res) {
  //TODO: Update Hive
})


// router.get('/apiary', function(req, res) {
//
//
//   pool.query('SELECT * FROM ApiaryView', function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows);
//   });
//
// })
//
//
// router.get('/apiary/:id', function(req, res) {
//
//   pool.query('SELECT * FROM ApiaryView WHERE IDApiary = ? LIMIT 1', req.params.id, function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows[0]);
//   });
// });

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

// router.get('/inspection', function(req, res) {
//
//
//   pool.query('SELECT * FROM InspectionView', function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows);
//   });
//
// })
//
//
// router.get('/inspection/:id', function(req, res) {
//
//   pool.query('SELECT * FROM InspectionView WHERE IDInspection = ? LIMIT 1', req.params.id, function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows[0]);
//   });
//
// });

router.post('/inspection', function(req, res) {
  console.log(req.body);
  // pool.query('SELECT * FROM WeatherCondDict where NameType =  ? LIMIT 1',[req.body.weather],function(err, rows, fields){
  //   if(err) console.log(err);
  //   var weather = rows[0];
  //   pool.query('SELECT * FROM HiveStateDict where NameType =  ? LIMIT 1',[req.body.hivestate],function(err, rows, fields){
  //     if(err) console.log(err);
  //     var hivestate = rows[0];
  //     pool.query('SELECT * FROM ColStrengthDict where NameType =  ? LIMIT 1',[req.body.colstr],function(err, rows, fields){
  //       if(err) console.log(err);
  //       var colstr = rows[0];
  //       pool.query('SELECT * FROM HiveTemperT where NameType =  ? LIMIT 1',[req.body.temp],function(err, rows, fields){
  //         if(err) console.log(err);
  //         var temp = rows[0];
  //         var prepared = [req.body.hiveid,req.body.date,weather,hivestate,colstr,temp,1,"1,1","1,1,1,1",1,4];
  //         pool.query('CALL CreateInspection(?,?,?,?,?,?,?,?,?,?,?)',prepared,function(err,rows,fields){
  //           if(err) console.log(err);
  //           res.status(200).end();
  //         });
  //       });
  //
  //
  //     });
  //
  //
  //   });
  //
  //
  // });

  var prepared = [req.body.hiveid, req.body.date, req.body.weather, req.body.hivestate, req.body.colstr, req.body.temp, 1, "1,1", "1,1,1,1", 1, 4];
  pool.query('CALL CreateInspection(?,?,?,?,?,?,?,?,?,?,?)', prepared, function(err, rows, fields) {
    if (err) console.log(err);
    res.status(200).end();
  });
  res.status(500).end();



})

// router.get('/harvest', function(req, res) {
//
//
//   pool.query('SELECT * FROM HarvestView', function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows);
//   });
//
// })
//
//
// router.get('/harvest/:id', function(req, res) {
//
//   pool.query('SELECT * FROM HarvestView WHERE IDHarvest = ? LIMIT 1', req.params.id, function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows[0]);
//   });
// });


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

// router.get('/user', function(req, res) {
//
//
//   pool.query('SELECT * FROM UserView', function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows);
//   });
//
// })
//
// router.get('/user/:id', function(req, res) {
//
//
//   pool.query('SELECT * FROM UserView WHERE IDUser = ? LIMIT 1',[req.params.id], function(err, rows, fields) {
//     if (err) console.log(err);
//     res.json(rows[0]);
//   });
//
// })

module.exports = router;
