# `import config from "app/config"`
# `import store from "app/store"`

# `import $ from "app/helpers/selector"`

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

    bigImage =
        type:"object"
        properties:
            url:
                type: "string"
                href: "{{self}}"
            imageHeader:
                title: "Image Header"
                type: "object"
                properties:
                    title:
                        title: "Title"
                        type: "string"
                        format: "textarea"
                    subtitle:
                        title: "Subtitle"
                        type: "string"
                        format: "textarea"
                    text:
                        title: "Text"
                        type: "string"
                        format: "textarea"
                    text_color:
                        title: "Text Color"
                        type: "string"
                        enum: [
                            "white"
                            "black"
                        ]
                    text_shadow:
                        title: "Text Shadow"
                        type: "string"
                        enum: [
                            "None"
                            "textShadow"
                        ]
                    text_position:
                        title: "Text Position"
                        type: "string"
                        enum: [
                            "left"
                            "right"
                        ]
                    animationType:
                        title: "Animation Type"
                        type: "string"
                        enum: [
                            "slideDown"
                            "slideUp"
                            "slideUpSlow"
                            "fade"
                            "fade01"
                            "fade02"
                            "scale"
                        ]

    $("#action").click (e) ->
        e.preventDefault()
        save()

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
            console.log ui.item.attr "id"
            mimi = afterDrop(ui.item, $(this).data().uiSortable.currentItem, bigImage)

save = ->
    objectArr = []

    $("form").each ->
        textobjForm = $(this).serializeArray()

        textobj = {}

        $.each textobjForm, (i, v) ->
            textobj[v.name] = v.value

        objectArr.push(textobj)
    
    jsonstring = JSON.stringify(objectArr)

    $("#jsonOutput").html(jsonstring)

afterDrop = (dragElement, sortElement, schema) ->

    switch dragElement.attr "id"
        when "i1"
            sortElement.html(textTemplate())

            # element = document.getElementById "text"

            # editor = new JSONEditor(element, 
            #     theme: "html"
            #     schema: schema
            # )
        when "i2"
            sortElement.html(quoteTemplate())

    sortElement.addClass("dummyClass", 700, "swing")

    editor = sortElement.jsoneditor
        schema: schema
        theme: "html"

    editor.addClass "templateElement"

    return editor

`export default init`