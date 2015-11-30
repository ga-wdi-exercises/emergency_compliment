var Compliment = require("../models/compliment");

var complimentsController = {
  index: function(req,res){
    res.format({
      html: function(){
        res.render("compliments/index.hbs", {compliments: Compliment.all()});
      },
      json: function(){
        res.json(Compliment.all());
      }
    });
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
    });
  },
  show: function(req, res){
    var compliment = Compliment.find(parseInt(req.params.index));
    res.format({
      html: function(){
        res.render("compliments/show.hbs", {compliment: compliment});
      },
      json: function(){
        res.json(compliment);
      }
    });
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
    });
  },
  update: function(req, res) {
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
};

module.exports = complimentsController;
