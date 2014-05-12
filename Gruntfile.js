module.exports = function (grunt) {
	require("load-grunt-tasks")(grunt);

    grunt.initConfig({
        broccoli_build: {
            assets: {
                dest: ".tmp"
            }
        },
        useminPrepare: {
            html: ".tmp/index.html"
        },
        usemin: {
            html: "dist/*.html",
            css: "dist/*.css"
        },
        clean: ["tmp", ".tmp", "dist"],
        copy: {
            dist: {
                files: [{
                    expand: true,
                    cwd: ".tmp",
                    dest: "dist",
                    src: [
                        ".htaccess", // TODO: REMOVE AFTER SWITCHING TO ARCHITECHS
                        "index.html",
                        "images/sprites-cache/sprites.png",
                        "images/*.gif",
                        "fonts/*"
                    ]
                }]
            }
        },
        rev: {
            files: {
                src: [
                    "dist/*.js",
                    "dist/*.css",
                    "dist/fonts/*",
                    "dist/images/sprites-cache/sprites.png"
                ]
            }
        },
        rsync: {
            options: {
                recursive: true,
                host: "nordform@nordformat.ch",
                src: "dist/",
                syncDest: true // Delete old files on server
            },
            production: {
                options: {
                    dest: "www/turbo"
                }
            }
        },
        // manifest: {
        //     TODO: Add code, css, images, fonts
        // }
        shell: {
            options: {
                stdout: true,
                callback: function(err, stdout, stderr, cb) {
                    if (stderr) {
                        grunt.fail.warn(stderr);
                    }

                    cb();
                }
            },
            sprites: {
                // To install Glue:
                // 1. brew install python
                // 2. pip install glue
                // 3. pip install glue --upgrade
                command: "glue www/images/sprites --img=www/images/sprites-cache/ --css-template=sprites.jinja --css=www/styles/sprites-cache ratios=2 --url=/images/sprites-cache/ --sprite-namespace= --recursive"
            },
            server: {
                command: "node server.js"
            }
        }
    });

    grunt.registerTask("build", [
        "clean",
        "broccoli_build",
        "useminPrepare",
        "concat",
        "cssmin",
        "uglify",
        "copy",
        "rev",
        "usemin"
    ]);

    grunt.registerTask("deploy", [
        "build",
        "rsync:production"
    ]);

    grunt.registerTask("server", [
        "clean",
        "shell:server"
    ]);
};