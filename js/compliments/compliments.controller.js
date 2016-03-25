`use strict`;

(function(){
  var app = angular.module("compliments");
  app.controller("mainController", ComplimentsController);

  function ComplimentsController(){
    var vm = this;
    var randomIndex = Math.floor(Math.random() * data.length)
    vm.oneCompliment = data[randomIndex];
    vm.data = data;
  }

}());
