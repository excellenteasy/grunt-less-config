#
# grunt-less-config
# https://github.com/excellenteasy/grunt-less-config
#
# Copyright (c) 2013 Stephan Bönnemann
# Licensed under the MIT license.
#
'use strict'
module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    # Before generating any new files, remove any previously-created files.
    clean:
      tests: ['tmp']

    # Configuration to be run (and then tested).
    lessConfig:
      default_options:
        options:
          background: 'red'
          margin: 0
        files:
          'tmp/test.less': ['test/fixtures/test.less', 'test/fixtures/test2.less']

    # Unit tests.
    nodeunit:
      tests: ['test/*_test.js']


  # Actually load this plugin's task(s).
  grunt.loadTasks 'tasks'

  # These plugins provide necessary tasks.
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-nodeunit'

  # Whenever the 'test' task is run, first clean the 'tmp' dir, then run this
  # plugin's task(s), then test the result.
  grunt.registerTask 'test', ['clean', 'lessConfig', 'nodeunit']

  # By default, lint and run all tests.
  grunt.registerTask 'default', ['test']
