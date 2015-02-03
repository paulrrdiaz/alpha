###
Making the graphic for statistics
@main index
@author @paulrrdiaz
###
yOSON.AppCore.addModule "graphic", (Sb) ->
    st =
        pie : '#pie'
        graphicValue : yOSON.tmp.graphic
        options : {
            animation: true
            showTooltips: false
        }

    dom = {}
    catchDom = ->
        dom.pie = $(st.pie)
        return
    suscribeEvents = ->
        return
    functions = 
        makeGraphic: ->
            g = dom.pie.get(0).getContext('2d')
            chart = new Chart(g).Pie(st.graphicValue, st.options)
            return

    initialize = (oP) ->
        $.extend st, oP
        catchDom()
        suscribeEvents()
        functions.makeGraphic()
        return

    return {
        init: initialize
    }

, ['js/dist/libs/chartjs/Chart.js']