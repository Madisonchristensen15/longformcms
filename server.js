var express = require("express");
var tinylr = require("tiny-lr");
var broccoli = require("broccoli");
var brocware = require("broccoli/lib/middleware");
var Watcher = require("broccoli/lib/watcher");

var server = express();
var lrServer = new tinylr.Server();
var tree = broccoli.loadBrocfile();
var watcher = new Watcher(new broccoli.Builder(tree));

var HOST = "0.0.0.0";
var PORT = 9000;
var LR_PORT = 35729;

var proxy = function(req, res, next) {
    if (req.url !== "/") {
        // Redirect everything that does not contain a dot to /index.html
        // (assuming that everything else is a file, like favicon.ico)
        if (!req.url.match(/\./)) {
            req.url = "/index.html";
        }
    }

    next();
};

watcher.on("change", function() {
	lrServer.changed({ body: { files: ["LiveReload files"] }});
}).on("error", function(error){
	console.log(error.message, error.stack);
});

server.use(proxy);
server.use(brocware(watcher));

lrServer.listen(LR_PORT);
server.listen(PORT, HOST);