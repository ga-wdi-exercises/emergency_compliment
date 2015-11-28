var app = require('express')()
var complimentsController = require("./controllers/complimentsController")

app.get("/compliments", complimentsController.index)
app.get("/compliments/:index", complimentsController.show)

app.listen(3000, function(){
  console.log('app listening on http://localhost:3000/')
})
