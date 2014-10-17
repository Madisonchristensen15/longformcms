`import { config } from "app/config"`
`import { store } from "app/store"`
`import { utils } from "app/utils"`

`import { viewManager } from "app/viewManager"`
`import { pages } from "app/views/pages"`
`import { sections } from "app/views/sections"`

actionManager =
    init: ->
        $("footer").hide()

        $("#newLongform").click ->
            viewManager.show "dashboard"

        $("#chooser a").click ->
            store.longform =
                type: $(@).attr "id"

            $.ajax
                url: config.apiUrl + "/longforms"
                type: "POST"
                data:
                    store.longform

                success: (response) ->
                    viewManager.renderTemplate "pages"
                    viewManager.show "pages"
                    $("footer").show()

                error: ->

        $(".longform .image, .longform .caption").click ->
            lf = store.get()
            index = $(@).parent().index() - 1
            longform = lf.longforms[index]
            console.log longform

            $.ajax
                url: config.apiUrl + "/longforms/" + longform.id
                type: "GET"

                success: (response) ->
                    viewManager.renderTemplate "pages", response.longform
                    viewManager.show "pages"
                    pages.init()

                    console.log pages.get()

                    $("footer").show()

                    $("#publish").click ->
                        $.ajax
                            url: config.apiUrl + "/longforms/" + longform.id
                            type: "GET"

                            success: (response) ->
                                console.log JSON.stringify(response.longform)
                                $.ajax
                                    url: config.apiUrl + "/longforms/" + longform.id + "?edit=false"
                                    type: "PUT"
                                    data: JSON.stringify(response.longform)
                                    contentType: "application/json"

                                    success: (response) ->
                                        console.dir response


                    $("#save").click ->
                        longform.title = $("#title").val()
                        longform.pages = pages.get()
                        lftest = JSON.stringify(longform)

                        $.ajax
                            url: config.apiUrl + "/longforms/" + longform.id
                            type: "PUT"
                            data: lftest
                            contentType: "application/json"

                            success: (response) ->
                                console.log response
                                console.log "successfully added pages"

                            error: ->
                                console.log "pages error"

                error: ->
                    console.log "error"


        $("a#new").fancybox
            helpers:
                overlay:
                    css:
                        "background": "rgba(0, 122, 191, 0.3)"

            afterClose: ->
                console.log "closed!"

`export { actionManager }`