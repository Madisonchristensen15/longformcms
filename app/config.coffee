config =
    # API system for localhost development
    # "local" (api.tagesanzeiger.nn2), "dev01", "dev02", "dev03" "staging"
    devSystem: "local"
    apiUrl: "/api"

if config.devSystem is "local"
    config.apiUrl = "http://api.tagesanzeiger.nn2"
else
    config.apiUrl = "http://#{config.devSystem}.mobile.tagesanzeiger.ch#{config.apiUrl}"

`export { config }`