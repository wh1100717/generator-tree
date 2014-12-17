define (require, exports, module) ->
    "use strict"

    <%= appname %> = {}

    <%= appname %>.init = ->
        console.log("<%= appname %> Init.")

    module.exports = <%= appname %>
