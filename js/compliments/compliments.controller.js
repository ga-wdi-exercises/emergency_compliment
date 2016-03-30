(function(){
    "use strict";
    
    angular
        .module("compliments")
        .controller("complimentsController", [
            ComplimentsController
        ]);

    function ComplimentsController(){
        var vm = this;
        vm.data = data;
        vm.random_compliment = data[Math.floor(Math.random() * data.length)];
    }
})();
