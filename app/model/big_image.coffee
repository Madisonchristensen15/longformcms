bigImage =
    title: "Big Image"
    type:"object"
    properties:
        url:
            title: "URL"
            type: "string"
            href: "{{self}}"
        imageHeader:
            title: "Image Header"
            type: "object"
            properties:
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