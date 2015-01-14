define (require, exports, module) ->
    "use strict"

    Module1 = require("module/module1")

    Home = {}

    Home.init = ->
        console.log "Home Init"
        Module1.init()

    module.exports = Home