# `import config from "app/config"`
# `import store from "app/store"`

# `import $ from "app/helpers/selector"`

`import bigImageModel from "app/model/big_image"`
`import textModel from "app/model/text"`

`import { editor } from "app/editor"`

`import applicationTemplate from "app/templates/application"`
`import dashboardTemplate from "app/templates/dashboard"`

`import textTemplate from "app/templates/text"`
`import quoteTemplate from "app/templates/quote"`

init = ->
    # Replaces clicks with touchevents to remove 300ms delay (for non-IE)
    # FastClick.attach document.body

    # Render and insert application
    document.body.insertAdjacentHTML "afterbegin", applicationTemplate()

    # Render and insert templates
    $("#viewport").append dashboardTemplate()
    # $("#viewport").insertAdjacentHTML "beforeend", headerTemplate()
    # $("#viewport").insertAdjacentHTML "beforeend", frontTemplate(context)

    $("#action").click (e) ->
        e.preventDefault()
        editor.save()
        $("#jsonOutput").html(editor.getEditorValue())

    $("#thumbnailWrapper div").draggable
        helper: ->
            helper = $(this).clone()
            helper.css
                width: "200px"
                height: "90px"
        connectToSortable: "#templateWrapper"

    $("#templateWrapper").droppable().sortable
        placeholder: "placeholder"

        receive: (e, ui) ->
            afterDrop(ui.item, $(this).data().uiSortable.currentItem)

afterDrop = (dragElement, sortElement) ->
    switch dragElement.attr "id"
        when "i1"
            schema = bigImageModel
        when "i2"
            schema = textModel

    sortElement.addClass("dummyClass", 700, "swing")

    cmseditor = sortElement.jsoneditor
        schema: schema
        theme: "bootstrap2"
        # disable_collapse: true
        disable_edit_json: true
        collapsed: true

    cmseditor.addClass "templateElement"

    $(".row-fluid .control-group .controls textarea").summernote
        height: 300

`export default init`