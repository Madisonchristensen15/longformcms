`import store from "app/store"`
`import { utils } from "app/utils"`

`import { viewManager } from "app/viewManager"`
`import { sections } from "app/views/sections"`

actionManager =
    init: ->
        $("footer").hide()

        $(".type").click ->
            store.longform =
                id: utils.getRandomNumber()
                type: $(@).attr "id"
                sections: [
                    id: utils.getRandomNumber()
                    description: $(@).attr("id")+"section"
                ,
                    id: utils.getRandomNumber()
                    description: "blabla"
                ]

            txt = JSON.stringify(store)

            console.log txt
            viewManager.renderTemplate "sections", store.longform
            viewManager.show "sections"
            sections.init()
            $("footer").show()

        $("#save").click =>
            @save()

    save: ->
        sections.getSections()
        console.dir store.longform

`export { actionManager }`