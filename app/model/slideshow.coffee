slideshow =
    title: "Sildeshow"
    type: "object"
    properties:
        isCorousel:
            title: "Corousel"
            type: "string"
            enum: [
                "true"
                "false"
            ]
        slides:
            title: "Slide"
            type: "array"
            uniqueItems: true
            items:
                title: "Slide"
                type: "object"
                properties:
                    url:
                        title: "URL"
                        type: "string"
                        href: "{{self}}"
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
            default:
                url: ""
                caption:
                    caption_title: ""
                    caption_text: ""