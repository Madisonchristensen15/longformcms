text =
    title: "Text"
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
        text_width:
            title: "Text Width"
            type: "string"
            enum: [
                "col-1-12"
                "col-2-12"
                "col-3-12"
                "col-4-12"
                "col-5-12"
                "col-6-12"
                "col-7-12"
                "col-8-12"
                "col-9-12"
                "col-10-12"
                "col-11-12"
                "col-12-12"
            ]

        border_position:
            title: "Border Position"
            type: "string"
            enum: [
                "borderLeft"
                "borderRight"
            ]

        images:
            title: "Images"
            type: "array"
            format: "table"
            uniqueItems: true
            items:
                title: "Image"
                type: "object"
                properties:
                    url:
                        title: "URL"
                        type: "string"
                        href: "{{self}}"
                    image_position:
                        title: "Image Position"
                        type: "string"
                        enum: [
                            "left"
                            "right"
                        ]
                    image_width:
                        title: "Image Width"
                        type: "string"
                        enum: [
                            "col-1-12"
                            "col-2-12"
                            "col-3-12"
                            "col-4-12"
                            "col-5-12"
                            "col-6-12"
                            "col-7-12"
                            "col-8-12"
                            "col-9-12"
                            "col-10-12"
                            "col-11-12"
                            "col-12-12"
                        ]
                    caption:
                        title: "Caption"
                        type: "object"
                        properties:
                            caption_title:
                                title: "Caption Title"
                                type: "string"
                            caption_text:
                                title: "Caption Text"
                                type: "string"
                                format:"textarea"
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