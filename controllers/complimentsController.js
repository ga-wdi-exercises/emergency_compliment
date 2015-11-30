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
  create: function(req, res){
    var compliment = Compliment(req.body.compliment); // `new` is omitted to return string value
    res.format({
      html: function(){
	res.redirect("/compliments/" + Compliment.all().indexOf(compliment));
      },
      json: function(){
        res.json(compliment);
      }
    })
  },
  show: function(req, res){
    var compliment = Compliment.find(req.params.index);
    res.format({
      html: function(){
	res.render("compliments/show.hbs", {compliment: compliment});
      },
      json: function(){
        res.json(JSON.stringify(compliment));
      }
    })
  },
  destroy: function(req, res){
    var compliment = Compliment.find(req.params.index);
    compliment.destroy();
    res.format({
      html: function(){
	res.redirect("/compliments");
      },
      json: function(){
        res.json();
      }
    })
  }
};

module.exports = complimentsController;