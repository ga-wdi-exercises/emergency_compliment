var express = require('express');
var app = express();
var Compliment = require("./models/compliment");
var complimentsController = require("./controllers/complimentsController");

app.use("*.json",function (req, res, next) {
  req.headers.accept = 'application/json';
  next();
});

app.get("/", function(req, res){
  res.redirect("/compliments");
});

app.get("/compliments/:index:format?", complimentsController.show);
app.delete("/compliments/:index:format?", complimentsController.destroy);
app.get("/compliments/?:format?", complimentsController.index);

app.listen(3000, function(){
  console.log('app listening on http://localhost:3000/');
})
