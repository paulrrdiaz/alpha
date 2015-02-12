###
empty module
@main all
@author @paulrrdiaz
###
yOSON.AppCore.addModule "empty", (Sb) ->
    st =
        empty : '.empty'

    dom = {}
    catchDom = ->
        return
    suscribeEvents = ->
        return
    functions = 
        log: ->
            log 'empty...'
            return

    initialize = (oP) ->
        $.extend st, oP
        catchDom()
        suscribeEvents()
        functions.log()
        return

    return {
        init: initialize
    }

, []