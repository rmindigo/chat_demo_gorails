$(document).on "turbolinks:load", ->
	$("#new_message").on "keypress", (e) ->
		if e && e.keyCode == 13
			e.preventDefault()
			$(this).submit()


$("#new_message").on "submit", (e) ->
	e.preventDefault()
	console.log "SUBMITTED FORM"
    

    