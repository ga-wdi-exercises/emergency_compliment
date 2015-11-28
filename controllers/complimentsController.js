var compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
]

module.exports = {
  index: function(req,res){
    res.render("compliments/index.hbs", {compliments: compliments});
  },
  show: function(req, res){
    res.render("compliments/show.hbs", {compliment: compliments[req.params.index]});
  },
}