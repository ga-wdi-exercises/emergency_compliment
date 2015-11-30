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
};

module.exports = complimentsController;