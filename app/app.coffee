# `import config from "app/config"`
# `import store from "app/store"`

`import { editor } from "app/editor"`
`import { viewManager } from "app/viewManager"`
`import { actionManager } from "app/actionManager"`

`import { sections } from "app/views/sections"`

init = ->
    viewManager.init()

    viewManager.renderTemplate "dashboard"
    viewManager.renderTemplate "layouts"

    viewManager.show "dashboard"

    actionManager.init()

`export default init`