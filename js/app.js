"use strict";
console.log("App.js imported");

(function () {
    console.log("Function within app.js invoked")
    angular
        .module("emergencyCompliment", [
            "ui.router",
            "compliments"
        ])
        .config([
            "$stateProvider",
            Router
        ]);
    
    function Router($stateProvider) {
        console.log("Router function called");
        $stateProvider
    }
    
    
}());