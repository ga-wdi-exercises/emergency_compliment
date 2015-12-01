var Compliment = require("../models/compliment");
var complimentsController = {
  index: function(req, res){
    res.render('compliments/index.hbs', {
      compliments: Compliment.all()
    });
  },
  show: function(req, res){
    res.render('compliments/show.hbs',{
      compliment: Compliment.find([req.params.id])
    });
  },
  new: function(req, res){
    res.render('compliments/new.hbs');
  },
  create: function(req, res){
    // use model to create compliment
    var compliment = Compliment.create(req.body.compliment)
    // redirect to compliment
    res.redirect("/compliments")
  },
  
  update: function(req, res) {
    var id = parseInt(req.params.id);
    var updatedCompliment = Compliment.find(id)
    updatedCompliment = req.body.compliment;
    res.redirect("/compliments/" + id)
  }
  // edit action code goes here...

 // update action code goes here...
}

module.exports = complimentsController;
