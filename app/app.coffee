`import { config } from "app/config"`
`import { store } from "app/store"`

`import { editor } from "app/editor"`
`import { viewManager } from "app/viewManager"`
`import { actionManager } from "app/actionManager"`

`import { sections } from "app/views/sections"`

init = ->
    viewManager.init()

    Handlebars.registerPartial "page", (payload) ->
        require("app/templates/_page").default payload

    Handlebars.registerPartial "section", (payload) ->
        require("app/templates/_section").default payload

    $.ajax
        url: config.apiUrl + "/longforms"
        type: "GET"

        success: (response) ->
            store.fill response

            console.log store.get()

            viewManager.renderTemplate "overview", store.get()
            viewManager.renderTemplate "dashboard"
            # viewManager.renderTemplate "pages"
            viewManager.show "overview"

            actionManager.init()

            $(".delete").click ->
                lf = store.get()
                index = $(@).parent().index() - 1
                longform = lf.longforms[index]
                console.log longform

                $.ajax
                    url: config.apiUrl + "/longforms/" + longform.id
                    type: "DELETE"

                    success: ->
                        console.log "deleted"

                    error: ->
                        console.log "error"

        error: ->
            console.log "error"

`export default init`