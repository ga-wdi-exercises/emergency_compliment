var compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
];

var Compliment = function(){
  
}

Compliment.prototype = {
  destroy: function(index){
    compliments.splice(index,1);
  }
}

Compliment.all = function(){
  return compliments;
}

Compliment.find = function(index){
  return new Compliment(compliments[index]);
}

module.exports = Compliment;
