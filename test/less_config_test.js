'use strict';

var grunt = require('grunt');
var less = require('less');

exports.less_config = {
  default_options: function(test) {
    test.expect(2);

    var actual = grunt.file.read('tmp/test.less');
    var expectedLess = grunt.file.read('test/expected/test.less');
    var expectedCSS = grunt.file.read('test/expected/test.css');
    var parser = new(less.Parser);
    test.equal(actual, expectedLess, 'Variables prepended to tmp less file');
    parser.parse(actual, function (err, tree) {
        test.equal(tree.toCSS(), expectedCSS, 'Correct CSS output');
        test.done();
    });
  }
};
