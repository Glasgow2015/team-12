// this library deals with emailing messages
var nodemailer = require('nodemailer');
var smtpTransport = require('nodemailer-smtp-transport');

var transporter = nodemailer.createTransport(smtpTransport({
    service: 'yahoo',
    auth: {
        user: 'forcebeewithyou',
        pass: 'codeforgood'
    }
}));

var email = function(address,subject,text){

  transporter.sendMail({
      from: 'forcebeewithyou@yahoo.com',
      to: address,
      subject: subject,
      text: text
  }, function(error, response) {
     if (error) {
          console.log(error);
     } else {
          console.log('Message sent');
     }
  });

}

module.exports = email;
