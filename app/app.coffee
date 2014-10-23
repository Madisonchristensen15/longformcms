# `import config from "app/config"`
# `import store from "app/store"`

# `import $ from "app/helpers/selector"`

#`import bigImageModel from "app/model/big_image"`
#`import textModel from "app/model/text"`

`import type01Model from "app/model/layoutType01"`
`import type02Model from "app/model/layoutType02"`
`import type03Model from "app/model/layoutType03"`
`import type04Model from "app/model/layoutType04"`
`import type05Model from "app/model/layoutType05"`
`import type06Model from "app/model/layoutType06"`

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
            schema = type01Model
        when "i2"
            schema = type02Model
        when "i3"
            schema = type03Model
        when "i4"
            schema = type04Model
        when "i5"
            schema = type05Model
        when "i6"
            schema = type06Model

    sortElement.addClass("dummyClass", 700, "swing")

    cmseditor = sortElement.jsoneditor
        schema: schema
        theme: "bootstrap2"
        # disable_collapse: true
        disable_edit_json: true
        collapsed: true

    cmseditor.addClass "templateElement"

    # $(sortElement).find(".container-text textarea").summernote
    #     height: 300

    $(sortElement).find(".container-text textarea").sceditor
        plugins: "bbcode"
        style: "/SCEditor/minified/jquery.sceditor.default.min.css"
        toolbar: "bold,italic,underline,strike,superscript,left,center,right,justify,font,size,color,removeformat,bulletlist,orderedlist,table,code,quote,image,email,link,unlink,youtube,date,time,ltr,rtl,print,maximize,source"
        autofocus: true
        autoUpdate: true

`export default init`