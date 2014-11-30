module.exports = (grunt) ->
    'use strict'

    require('load-grunt-tasks')(grunt)

    grunt.initConfig {
        pkg: grunt.file.readJSON 'package.json'
        banner: """
        /*
         * <%= pkg.name %>
         * Copyright <%= grunt.template.today("yyyy-mm-dd") %> <%= pkg.author.name %>
         */
        """
        clean: {
            build: ['build']
            tmp: ['.tmp']
        }
        less: {
            compileCore: {
                options: {
                    strictMath: true,
                    sourceMap: true,
                    outputSourceFiles: true,
                    sourceMapURL: '<%= pkg.name %>.css.map'
                    sourceMapFilename: '.tmp/build/css/<%= pkg.name %>.css.map'
                }
                files: {
                    '.tmp/build/css/<%= pkg.name %>.css': 'src/less/<%= pkg.name %>.less'
                }
            }
        }
        cssmin: {
            options: {
                keepSpecialComments: '*'
                noAdvanced: true
            }
            core: {
                files: {
                    '.tmp/build/css/<%= pkg.name %>.min.css': '.tmp/build/css/<%= pkg.name %>.css'
                }
            }
        }
        usebanner: {
            dist: {
                options: {
                    position: 'top'
                    banner: '<%= banner %>'
                }
                files: {
                    src: [
                        '.tmp/build/css/<%= pkg.name %>.css'
                        '.tmp/build/css/<%= pkg.name %>.min.css'
                    ]
                }
            }
        }
        copy: {
            js: {
                expand: true
                cwd: "src/"
                src: ["js/**/*.js"]
                dest: ".tmp/build/"
            }
            module: {
                expand: true
                cwd: "src/"
                src: ["module/**"]
                dest: ".tmp/build/"
            }
            build: {
                expand: true
                cwd: ".tmp/build/"
                src: ["**"]
                dest: "build/"
            }
        }
        uglify: {
            js: {
                files: [{
                    expand: true
                    cwd: ".tmp/build/js/"
                    src: ["**/*.js"]
                    dest: "build/js/"
                }]
            }
        }
        connect: {
            options: {
                port: 9007
                livereload: 42201
                hostname: 'localhost'
                base: '.'
                middleware: (connect, options, middlewares) ->
                    middlewares.unshift (req, res, next) ->
                        req.url = "/.tmp/build" + req.url if req.url isnt '/' and req.url.indexOf('http://g.tbcdn.cn') is -1
                        return next()
                    return middlewares
            },
            livereload: {
                options: {
                    open: true
                }
            }
        }
        watch: {
            less: {
                files: 'src/less/**/*.less'
                tasks: ['less']
            }
            js: {
                files: 'src/js/**/*.js'
                tasks: ['copy:js']
            }
            module: {
                files: 'src/module/**'
                tasks: ['copy:module']
            }
            livereload: {
                options: {
                    livereload: '<%= connect.options.livereload %>'
                }
                files: [
                    '{,*/}*.html'
                    '.tmp/build/**/css/{,*/}*.css'
                    '.tmp/build/**/js/{,*/}*.js'
                ]
            }
        }
    }

    grunt.registerTask 'servebuild', [
        'clean:tmp'
        'copy:js'
        'copy:module'
        'less'
    ]

    grunt.registerTask 'build', [
        'clean:*'                       #Clean .tmp && build folder
        'copy:js'                       #Copy js files form src/js to .tmp/build/src/js
        'copy:module'                   #Copy module files from src/module to .tmp/build/src/module
        'less', 'cssmin', 'usebanner'   #Build Css
        'copy:build'                    #Copy files from .tmp to build
        'uglify:js'                     #Uglify JS
    ]

    grunt.registerTask 'serve', ['servebuild', 'connect:livereload', 'watch']

    grunt.registerTask 'server', ['serve']

    grunt.registerTask 'default', ['serve']

    return
























