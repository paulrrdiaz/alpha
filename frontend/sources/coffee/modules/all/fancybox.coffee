###
Calling fancybox.js, just use '.call_fancybox'
@main all
@author @paulrrdiaz
###
yOSON.AppCore.addModule "fancybox", (Sb) ->
    st =
        callFancybox : ".call_fancybox"

    dom = {}
    catchDom = ->
        dom.callFancybox = $(st.callFancybox)
        return
    suscribeEvents = ->
        return
    functions = 
        fancybox: ->
            dom.callFancybox.fancybox({
                fitToView   : false
                padding     : 0
                autoSize    : true
                closeClick  : false
                openEffect  : 'fade'
                closeEffect : 'fade'
                tpl         :   {
                                    wrap     : '<div class="fancybox-wrap" tabIndex="-1"><div class="fancybox-skin"><div class="fancybox-outer"><div class="fancybox-inner"></div></div></div></div>'
                                    image    : '<img class="fancybox-image" src="{href}" alt="" />'
                                    error    : '<p class="fancybox-error">The requested content cannot be loaded.<br/>Please try again later.</p>'
                                    closeBtn : '<a title="Cerrar" class="fancybox-item fancybox-close" href="javascript:;"></a>'
                                    next     : '<a title="Siguiente" class="fancybox-nav fancybox-next" href="javascript:;"><span></span></a>'
                                    prev     : '<a title="Anterior" class="fancybox-nav fancybox-prev" href="javascript:;"><span></span></a>'
                                }
            })
            return

    initialize = (oP) ->
        $.extend st, oP
        catchDom()
        suscribeEvents()
        functions.fancybox()
        return

    return {
        init: initialize
    }

, ['js/dist/libs/fancybox/source/jquery.fancybox.js']