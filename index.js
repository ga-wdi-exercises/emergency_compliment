var express = require("express");
var app = express();
var bodyParser = require('body-parser');

app.use(express.static(__dirname + '/public'));
app.use(bodyParser.json());//
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded

app.use("*.json",function (req, res, next) {
  req.headers.accept = 'application/json';
  next();
});

var complimentsController = require("./controllers/complimentsController.js");

app.listen(3000, function(){
  console.log("app listening at http://localhost:3000/");
});

// root route
app.get("/", function(req, res){
  res.redirect("/compliments");
});

app.get( "/compliments.:format?",        complimentsController.index);
app.post("/compliments.:format?",        complimentsController.create);
app.get( "/compliments/new",    complimentsController.new);
app.get( "/compliments/:index.:format?", complimentsController.show);

// edit
app.get("/compliments/:index/edit", function(req, res){
});

// update
app.put("/compliments/:index", function(req, res){
});

// destroy
app.delete("/compliments/:index", function(req, res){
});
