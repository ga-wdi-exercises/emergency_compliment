var compliments = [
  'you have super long hair',
  'you are super cool'
];

function Compliment(){

}

Compliment.all = function(){
  return compliments;
}

Compliment.create = function(compliment){
  compliments.push(compliment);
}

Compliment.find = function(id){
  return compliments[parseInt(id) - 1]
}

module.exports = Compliment;
