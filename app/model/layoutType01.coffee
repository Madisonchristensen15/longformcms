layoutType01 =
    title: "Whole Page"
    type:"object"
    options:
        collapsed: true
    properties:
        Image:
            title: "Images"
            type: "object"
            properties:
                url:
                    title: "URL"
                    type: "string"
                    href: "{{self}}"
        Text:
            title: "Text"
            type: "object"
            properties:
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


`export default layoutType01`