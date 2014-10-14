viewManager =
    renderTemplate: (templateName, payload) ->
        # Render and insert template
        $("#viewport").append require("app/templates/#{templateName}").default payload

    init: ->
        # Render and insert application
        $("body").append require("app/templates/application").default

        # Render and insert header and footer
        $("body").append require("app/templates/header").default
        $("body").append require("app/templates/footer").default

    show: (template) ->

        # Fade? Other effects?
        $("section").hide()
        $("##{template}").show()

`export { viewManager }`