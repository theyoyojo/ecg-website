# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # how to do this better?
  window["aframe"] = {}

  $("#run").click((e)->
    e.preventDefault()
    editor = ace.edit("snapshot-area")
    snap = editor.getValue()
    eval(snap)
  )

  $("#clear").click((e)->
    e.preventDefault()
    $("#scene").empty()
    $("#scene").append("<a-scene></a-scene>")
  )

  $("#random").click((e)->
    e.preventDefault()
    $.ajax
      dataType: 'text'
      url: '/aframes/random'
      type: 'POST'
      success: (res) ->
        f = JSON.parse(res)
        editor = ace.edit("snapshot-area")
        snap = editor.setValue(f["prog"])
      error: (res) -> window.location = "/"
  )

  if namespace.controller is "projects" and namespace.action is "home"
    alert("We're home!")