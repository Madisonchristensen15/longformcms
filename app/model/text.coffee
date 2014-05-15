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

        images:
            title: "Images"
            type: "array"
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
            default: [
                url: "URL"
                image_position: "left"
                image_width: "col-4-12"
                caption:
                    caption_title: "Caption Title"
                    caption_text: "Caption Text"
                animationType: "slideDown"
            ]
        videos:
            title: "Videos"
            type: "array"
            uniqueItems: true
            items:
                type: "object"
                properties:
                    youtube_id:
                        title: "Youtube ID"
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
                    video_position:
                        title: "Video Position"
                        type: "string"
                        enum: [
                            "left"
                            "center"
                            "right"
                        ]
                    video_width:
                        title: "Video Width"
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
            default: [
                youtube_id: "URL"
                video_position: "left"
                video_width: "col-4-12"
                caption:
                    caption_title: "Caption Title"
                    caption_text: "Caption Text"
                animationType: "slideDown"
            ]

        infos:
            title: "Info"
            type: "array"
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
                    info_width:
                        title: "Info Width"
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
                    info_image:
                        title: "Info Image"
                        type: "string"
                        href: "{{self}}"
                    info_title:
                        title: "Info Title"
                        type: "string"
                    info_subtitle:
                        title: "Info Subtitle"
                        type: "string"
                    info_content:
                        title: "Info Content"
                        type: "string"
                        format:"textarea"
            default: [
                url: "URL"
                info_position: "left"
                info_width: "col-4-12"
                info_title: "Info Title"
                info_content: "Info Text"
            ]