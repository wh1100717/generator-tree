// Generated by CoffeeScript 1.8.0
define(function(require, exports, module) {
  "use strict";
  var Home, Module1;
  Module1 = require("module/module1");
  Home = {};
  Home.init = function() {
    console.log("Home Init");
    return Module1.init();
  };
  return module.exports = Home;
});
