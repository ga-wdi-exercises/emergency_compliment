var Compliment = require("../models/compliment")

var complimentsController = {
  index: function(req,res){
    res.format({
      html: function(){
	res.render("compliments/index.hbs", {compliments: Compliment.all()});
      },
      json: function(){
        res.json(Compliment.all()) 
      }
    })
  },
  show: function(req, res){
    res.render("compliments/show.hbs", {compliment: Compliment.find(req.params.index)});
  },
};

module.exports = complimentsController;