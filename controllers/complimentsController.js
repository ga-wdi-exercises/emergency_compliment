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
  // edit action code goes here...
  edit: function(req, res){
   res.render('compliments/edit.hbs', {
     id: req.params.id,
     compliment: Compliment.find([req.params.id])
   });
  }

 // update action code goes here...
 u  update: function(req, res) {
    var id = parseInt(req.params.index);
    Compliment.all()[id] = req.body.compliment;

    res.format({
      html: function(){
        res.redirect("/compliments/" + id);
      },
      json: function(){
        res.json(Compliment.find(id));
      }
    });
 }
}

module.exports = complimentsController;
