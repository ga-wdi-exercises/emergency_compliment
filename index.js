var app = require('express')()
var Compliment = require("./models/compliment")
var complimentsController = require("./controllers/complimentsController")

app.use("*.json",function (req, res, next) {
  req.headers.accept = 'application/json';
  next();
});

app.get("/compliments/?:format?", complimentsController.index)
app.get("/compliments/:index", complimentsController.show)

app.listen(3000, function(){
  console.log('app listening on http://localhost:3000/')
})
