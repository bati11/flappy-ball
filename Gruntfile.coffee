module.exports = (grunt) ->
  grunt.initConfig
    connect:
      server:
        options:
          port: 9000
          base: 'app'
          hostname: '*'

    watch:
      livereload:
        options:
          livereload: true
        files: [
          'app/**/*.html'
          'app/scripts/**/*.js'
        ]


  grunt.loadNpmTasks "grunt-contrib-connect"
  grunt.loadNpmTasks "grunt-contrib-watch"

  grunt.registerTask 'default', ['connect', 'watch']

