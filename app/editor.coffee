editor =
    editorArray: []
    stringArray: []
    jsonString: ""
    elementClass: ".templateElement"

    save: ->
        @editorArray = []
        $(@elementClass).each (index, element) =>
            @addElement $(element)

    addElement: (element) ->
        @editorArray.push(element)

    getEditorValue: ->
        @jsonString = ''
        @stringArray = []

        @jsonString += '{"sections": ['
        for editor in @editorArray
            @stringArray.push(JSON.stringify(editor.jsoneditor("value")))

        @jsonString += @stringArray.join()
        @jsonString += ']}'

        @jsonString

`export { editor }`