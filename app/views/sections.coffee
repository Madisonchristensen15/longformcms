`import store from "app/store"`

createSortable = (parent) ->
    parent.sortable
        placeholder: "sortableHelper"
        cursorAt:
            top: 75
            left: 0

    parent.disableSelection()

createNewSection = (parent, count) ->
    parent.append("<div class=\"new\">Sektion #{count}</div>")
    # Better animation needed
    $(".new").fadeIn()

sections =
    sectionArray: []
    sectionCount: 3
    parent: ".sortableSections"

    init: ->
        createSortable $(@parent)

        $("#new").click =>
            createNewSection $(@parent), ++@sectionCount

        $(".sortableSections div").hover ->
            $(@).find("> div").show()
        , ->
            $(@).find("> div").hide()

        $(".delete").click ->
            $(@).parent().fadeOut 500, ->
                $(@).remove()

    getSections: ->
        testArray = []
        $(@parent+"> div").each (i) ->
            bla = 
                id: $(@).attr "id"

            testArray[i] = bla

        store.longform.sections = testArray

`export { sections }`