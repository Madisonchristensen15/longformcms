list =
    title: "List"
    type: "array"
    uniqueItems: true
    items:
        title: "List"
        type: "object"
        properties:
            list_title:
                title: "List Title"
                type: "string"
            list_content:
                title: "List Content"
                type: "string"
                format:"textarea"
    default: [
        list_title: ""
        list_content: ""
    ]

`export default list`