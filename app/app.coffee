# `import config from "app/config"`
# `import store from "app/store"`

# `import $ from "app/helpers/selector"`

`import applicationTemplate from "app/templates/application"`
`import dashboardTemplate from "app/templates/dashboard"`

`import textTemplate from "app/templates/text"`

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
        helper: "clone"
        connectToSortable: "#templateWrapper"

    $("#templateWrapper").droppable().sortable
        receive: (e, ui) ->
            $(this).data().uiSortable.currentItem.html(textTemplate())
            $(this).data().uiSortable.currentItem.addClass("dummyClass", 700, "swing")
            afterDrop()

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

afterDrop = ->
    # $("#templateWrapper").append textTemplate()

`export default init`