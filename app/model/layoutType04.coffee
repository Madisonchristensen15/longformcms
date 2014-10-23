layoutType04 =
    title: "Layout Type 4: Dynamic & static"
    type:"object"
    options:
        collapsed: true
    properties:
        Image:
            title: "Images"
            type: "object"
            properties:
                image_position:
                    title: "Image Position"
                    type: "string"
                    enum: [
                        "left"
                        "right"
                    ]
                url:
                    title: "URL"
                    type: "string"
                    href: "{{self}}"

        Text:
            title: "Text"
            type: "object"
            properties:
                text_position:
                    title: "Text Position"
                    type: "string"
                    enum: [
                        "left"
                        "right"
                    ]
                text_shadow:
                    title: "Text Shadow"
                    type: "string"
                    enum: [
                        "None"
                        "textShadow"
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
                title:
                    title: "Title"
                    type: "string"
                subtitle:
                    title: "Subtitle"
                    type: "string"
                text:
                    title: "Text"
                    type: "string"
                    format: "textarea"

`export default layoutType04`