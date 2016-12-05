'use strict';

(function(){
  var app = angular.module("emergencyComp");
  app.controller("complimentsController", ComplimentsController)

  function ComplimentsController(){
    var vm = this;
    var randomIndex = Math.floor(Math.random() * data.length)
    vm.data = data[randomIndex]
  }
}());
