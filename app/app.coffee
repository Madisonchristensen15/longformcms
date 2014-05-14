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
            afterDrop(ui.item, $(this).data().uiSortable.currentItem)

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

afterDrop = (dragElement, sortElement) ->

    switch dragElement.attr "id"
        when "i1"
            sortElement.html(textTemplate())
        when "i2"
            sortElement.html(quoteTemplate())

    sortElement.addClass("dummyClass", 700, "swing") 

`export default init`