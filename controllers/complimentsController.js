var Compliment = require("../models/compliment.js");

var complimentsController = {
  index: function(req, res) {
    res.format({
      html: function(){
        res.render("compliments/index.hbs",{compliments: Compliment.all()});
      },
      json: function(){
        res.json(Compliment.all());
      }
    });
  },
  show: function(req, res) {
    var index = req.params.index;
    var compliments = Compliment.all();
    var compliment = compliments[index];

    res.format({
      html: function() {
        res.render("compliments/show.hbs", {compliment: compliment});
      },
      json: function() {
        res.json(compliment);
      }
    });
  },
  new: function(req, res) {
    res.render("compliments/new.hbs");
  },
  create: function(req, res) {
    var createdCompliment = Compliment.create(req.body.compliment);

    res.format({
      html: function() {
        res.redirect("/compliments");
      },
      json: function() {
        res.json(createdCompliment);
      }
    });
  }
};

module.exports = complimentsController;
