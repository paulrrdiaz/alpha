###
Add handle to navDiv
@main all
@author @paulrrdiaz
###
yOSON.AppCore.addModule "animatingNav", (Sb) ->
    st =
        navDiv : 'nav > div'
        navUl : 'nav > ul'

    dom = {}
    catchDom = ->
        dom.navDiv = $(st.navDiv)
        dom.navUl = $(st.navUl)
        return
    suscribeEvents = ->
        dom.navDiv.on 'click', events.renderNavUl
        return
    events =
        renderNavUl: ->
            $this = $(this)
            if $this.hasClass 'active'
                $this.removeClass('active').parent().animate(
                    'right' : '-138px'
                )
                return false
            $this.addClass('active').parent().animate(
                'right' : 0
            )
            return
    functions = 
        empty: ->
            
            return

    initialize = (oP) ->
        $.extend st, oP
        catchDom()
        suscribeEvents()
        return

    return {
        init: initialize
    }

, []