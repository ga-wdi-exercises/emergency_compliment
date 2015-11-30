var express = require("express");
var app = express();
var bodyParser = require("body-parser");
var complimentsController = require("./controllers/complimentsController");

app.use(bodyParser.json());//
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded

app.get("/", complimentsController.index);
app.get("/compliments", complimentsController.index);

app.post("/compliments", function(req, res){
  complimentsController.create(req, res)
});

app.get("/compliments/:id", complimentsController.show);

app.listen(3000, function(){
  console.log("Listening on http://localhost:3000/");
})
