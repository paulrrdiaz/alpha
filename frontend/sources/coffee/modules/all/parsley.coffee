###
Initialize parsley.js
@main all
@author @paulrrdiaz
###
yOSON.AppCore.addModule "parsley", (Sb) ->
    st =

    dom = {}
    catchDom = ->
        return
    suscribeEvents = ->
        return
    functions =
        setParsley: ->
            window.ParsleyValidator.setLocale 'es'
            return
        parsley: ->
            return

    initialize = (oP) ->
        $.extend st, oP
        catchDom()
        suscribeEvents()
        functions.setParsley()
        functions.parsley()
        return

    return {
        init: initialize
    }

, ['js/dist/libs/parsleyjs/src/i18n/es.js', 'js/dist/libs/parsleyjs/dist/parsley.js']