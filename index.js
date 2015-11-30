var express = require("express");
var app = express();
var complimentsController = require("./controllers/complimentsController");

app.get("/", complimentsController.index);
app.get("/compliments", complimentsController.index);
app.get("/compliments/:id", complimentsController.show);

app.listen(3000, function(){
  console.log("Listening on http://localhost:3000/");
})
