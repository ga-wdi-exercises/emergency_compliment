var complimentsController = {
  index: function(req, res){
    res.render('compliments/index.hbs', {
      compliment: [
        'you have super long hair'
      ] 
    })
  }
}

module.exports = complimentsController;
