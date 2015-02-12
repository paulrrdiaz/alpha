###
Initialize parsley.js
@main all
@author @paulrrdiaz
###
yOSON.AppCore.addModule "parsley", (Sb) ->
    log 'parsley...'
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

, ['js/libs/parsleyjs/src/i18n/es.js', 'js/libs/parsleyjs/dist/parsley.js']