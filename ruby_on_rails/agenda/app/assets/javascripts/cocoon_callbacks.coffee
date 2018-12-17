jQuery(document).on 'turbolinks:load', ->
  phones = $('#phones')
 
  phones.on 'cocoon:after-insert', (e, added_el) ->
    added_el.find("input").first().focus();
 
  phones.on 'cocoon:before-remove', (e, el_to_remove) ->
    $(this).data('remove-timeout', 1000)
    el_to_remove.fadeOut(1000)