# createNewPage = ->

deletePage = (element) ->
    console.log "delete"
    $(element).parent().fadeOut 0, ->
        $(@).remove()

pages =
    init: ->
        $("#newPage").click ->
            obj =
                title: "Pageee"
            newPage = require("app/templates/_page").default obj
            $(@).parent().parent().parent().append(newPage)

            $(".delete").click ->
                deletePage @

    get: ->
        pagesArray = []

        $(".page").each (i) ->
            page = 
                title: $(@).find(".caption").text()

            pagesArray[i] = page

        console.log pagesArray

        pagesArray

`export { pages }`
