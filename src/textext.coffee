do (window, $ = jQuery, module = $.fn.textext) ->
  { Plugin } = module

  class TextExt extends Plugin
    @defaults =
      html :
        container : '<div class="textext">'

    constructor : (opts = {}) ->
      @sourceElement = opts.element

      super opts, TextExt.defaults

      @element = $ @options 'html.container'

      @sourceElement.hide()
      @sourceElement.after @element

      @init()

  module.TextExt = TextExt
