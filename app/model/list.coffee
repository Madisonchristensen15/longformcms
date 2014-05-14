list =
    type: "object"
    properties:
        lists:
            type: "array"
            uniqueItems: true
            list:
                type: "object"
                properties: 
                    list_content:
                        type: "string"
                        format:"textarea"