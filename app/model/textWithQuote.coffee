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
        quote:
            title: "Quote"
            type: "object"
            properties:
                quote:
                    title: "Quote"
                    type: "string"
                    format: "textarea"
                quote_width:
                    title: "Quote Width"
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