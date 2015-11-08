var express = require('express');
var app = express();
var bodyparser = require ('body-parser');
var passport = require('passport')
var LocalStrategy = require('passport-local').Strategy;
var pool = require('./lib/database.js');
var session = require('express-session');
var cookieParser = require('cookie-parser');

app.use(bodyparser.json()); // for parsing application/json
app.use(bodyparser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded

// Add Capitialize to String
String.prototype.capitalize = function() {
    return this.replace(/(?:^|\s)\S/g, function(a) { return a.toUpperCase(); });
};

// serve static files
app.use(express.static('static'));

app.use(session({ secret: 'keyboard cat',
                  resave: false,
                  saveUninitialized: false}));
app.use(cookieParser());

// passport
passport.use(new LocalStrategy(
  function(username, password, done) {
    pool.query('SELECT * FROM User WHERE Login = ? LIMIT 1',[username], function(err, user) {
      if (err) { return done(err); }
      if (!rows[0]) {
        return done(null, false, { message: 'Incorrect username.' });
      }
      var hashedPass = crypto.createHash('md5').update(password);
      if (rows[0].UserPassword != hashedPass) {
        return done(null, false, { message: 'Incorrect password.' });
      }
      return done(null, rows[0]);
    });
  }
));

app.use(passport.initialize());
app.use(passport.session())

app.post('/login',
  passport.authenticate('local', { successRedirect: '/',
                                   failureRedirect: '/login',
                                   failureFlash: false })
);


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
