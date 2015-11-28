module.exports = {
  index: function(req,res){
    res.render("compliments/index.hbs", {compliments: ['one','two']});
  }
}