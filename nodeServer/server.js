var express = require('express');
var app = express();
var bodyparser = require ('body-parser');
var passport = require('passport')
var LocalStrategy = require('passport-local').Strategy;
var pool = require('./lib/database.js');
var session = require('express-session');
var cookieParser = require('cookie-parser');
var crypto = require('crypto');

app.use(cookieParser());
app.use(bodyparser.json()); // for parsing application/json
app.use(bodyparser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded

// Add Capitialize to String
String.prototype.capitalize = function() {
    return this.replace(/(?:^|\s)\S/g, function(a) { return a.toUpperCase(); });
};

// serve static files
app.use(express.static('static'));

app.use(session({ secret: 'keyboard cat',
                  resave: true,
                  saveUninitialized: true}));



// passport

app.use(passport.initialize());
app.use(passport.session());
passport.use(new LocalStrategy(
  function(username, password, done) {
    pool.query('SELECT * FROM UserView WHERE Login = ? LIMIT 1',[username], function(err, rows, fields) {
      if (err) { return done(err); }
      if (!rows[0]) {
        return done(null, false, { message: 'Incorrect username.' });
        console.log("fail");
      }
      console.log(rows[0]);
      var hashedPass = crypto.createHash('md5').update(password).digest('hex');
      console.log(hashedPass);
      if (rows[0].UserPassword != hashedPass) {
        return done(null, false, { message: 'Incorrect password.' });
        console.log("fail2");
      }

      return done(null, rows[0]);
    });
  }
));

passport.serializeUser(function(user, done) {
  done(null, user.IDUser);
});

passport.deserializeUser(function(id, done) {
  pool.query('SELECT * FROM UserView WHERE IDUser = ? LIMIT 1',[id], function(err, rows, fields) {
    if (err) { return done(err); }

    return done(err, rows[0]);
  });
});



app.post('/login',
  passport.authenticate('local', { successRedirect: '/',
                                   failureRedirect: '/me',
                                   failureFlash: false })
);

app.get('/me',function(req,res){
  console.log(req.user);
  req.redirect('/user.html?id='+req.user.IDUser);
})


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
