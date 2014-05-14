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

        infos:
            title: "Info"
            type: "array"
            format: "table"
            uniqueItems: true
            items:
                type: "object"
                properties:
                    url:
                        title: "URL"
                        type: "string"
                        href: "{{self}}"
                    info_position:
                        title: "Info Position"
                        type: "string"
                        enum: [
                            "left"
                            "center"
                            "right"
                        ]
                    info_image:
                        title: "Info Image"
                        type: "string"
                        href: "{{self}}"
                    info_title:
                        title: "Info Title"
                        type: "string"
                        format: "textarea"
                    info_subtitle:
                        title: "Info Subtitle"
                        type: "string"
                        format:"textarea"
                    info_content:
                        title: "Info Content"
                        type: "string"
                        format:"textarea"text =
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

        infos:
            title: "Info"
            type: "array"
            format: "table"
            uniqueItems: true
            items:
                type: "object"
                properties:
                    url:
                        title: "URL"
                        type: "string"
                        href: "{{self}}"
                    info_position:
                        title: "Info Position"
                        type: "string"
                        enum: [
                            "left"
                            "center"
                            "right"
                        ]
                    info_image:
                        title: "Info Image"
                        type: "string"
                        href: "{{self}}"
                    info_title:
                        title: "Info Title"
                        type: "string"
                        format: "textarea"
                    info_subtitle:
                        title: "Info Subtitle"
                        type: "string"
                        format:"textarea"
                    info_content:
                        title: "Info Content"
                        type: "string"
                        format:"textarea"