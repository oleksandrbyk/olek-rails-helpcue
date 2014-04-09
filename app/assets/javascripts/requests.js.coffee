$ = jQuery

$ ->
  if $('#requesters-table').length
    # Add request
    $('#new_request').on "ajax:success", (e, data) ->
      HelpCue.RequestsList.addRequest(data.partial)

    $('#requesters-table').on 'ajax:success', '.request-button', (e, data) ->
      $(this).toggleClass('btn-primary btn-success')
      $(this).closest('td').find('.request-remove').toggle()

    $('#requesters-table').on 'ajax:success', '.request-remove', (e, data) ->
      HelpCue.RequestsList.removeRequest(data.request_id)