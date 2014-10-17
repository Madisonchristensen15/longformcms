`import store from "app/store"`

hover = ->
    $(".sortableSections div").hover ->
        $(@).find("> div").show()
    , ->
        $(@).find("> div").hide()

createSortable = (parent) ->
    parent.sortable
        placeholder: "sortableHelper"
        cursorAt:
            top: 75
            left: 0

    parent.disableSelection()

createNewSection = (parent, count) ->
    obj =
        description: "Hallo Welt!"

    newSection = require("app/templates/_section").default obj
    newSection = $(newSection)
    newSection.addClass "new"
    parent.append(newSection).last()

    # Better animation needed
    $(".new").fadeIn()

    hover()

sections =
    sectionArray: []
    sectionCount: 3
    parent: ".sortableSections"

    init: ->
        createSortable $(@parent)

        # $("#new").click =>
        #     createNewSection $(@parent), ++@sectionCount

        hover()

        # $(".delete").click ->
        #     console.log "delete"
        #     $(@).parent().fadeOut 500, ->
        #         $(@).remove()

    getSections: ->
        testArray = []
        $(@parent+"> div").each (i) ->
            bla = 
                id: $(@).attr "id"

            testArray[i] = bla

        store.longform.sections = testArray

`export { sections }`