layoutType05 =
    title: "3 Columns"
    type:"array"
    options:
        collapsed: true
          
    items:
        title: "Column"
        type: "object"
        uniqueItems: true
        properties:
            url:
                title: "URL"
                type: "string"
                href: "{{self}}"
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

`export default layoutType05`