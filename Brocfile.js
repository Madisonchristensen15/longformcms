var filterCoffeeScript = require("broccoli-coffee");
var filterTemplates = require("broccoli-template");
var pickFiles = require("broccoli-static-compiler");
var compileSass = require("broccoli-sass");
var compileES6 = require("broccoli-es6-concatenator");
var mergeTrees = require("broccoli-merge-trees");

// Public directory
var www = "www";

// Bower components
var bower = "bower_components";

// CoffeeScript
var app = "app";
app = pickFiles(app, {
    srcDir: "/",
    destDir: "app"
});
app = filterCoffeeScript(app, { bare: true });

// Handlebars
app = filterTemplates(app, {
    extensions: ["handlebars"],
    compileFunction: "Handlebars.compile"
});

// Styles
var styles = "styles";
styles = pickFiles(styles, {
    srcDir: "/",
    destDir: "app"
});

// Compile Sass
appCss = compileSass([styles], "app/main.sass", "assets/main.css");

// Compile ES6 modules
appJs = compileES6(mergeTrees([app, bower]), {
    loaderFile: "loader.js/loader.js",
    inputFiles: [
        "app/**/*.js"
    ],
    legacyFilesToAppend: [
        "handlebars/handlebars.js",
        "jQuery/jquery.js",
        "fancybox/source/jquery.fancybox.js",
        "json-editor/dist/jsoneditor.js"
    ],
    wrapInEval: false,
    outputFile: "/assets/app.js"
});

module.exports = mergeTrees([appJs, appCss, www, bower]);