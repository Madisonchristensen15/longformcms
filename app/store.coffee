storeContainer = {}

store =
    fill: (storebla) ->
        storeContainer = storebla

    get: ->
        storeContainer

    getItem: (index) ->
        storeContainer[index]

# `export default store`
`export { store }`