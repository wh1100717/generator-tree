define (require, exports, module) ->
    "use strict"

    module1 = {}

    module1.init = ->
        console.log("module1 Init.")

    module.exports = module1
