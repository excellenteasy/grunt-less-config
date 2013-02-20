# grunt-less-config [![Build Status](https://travis-ci.org/excellenteasy/grunt-less-config.png?branch=master)](https://travis-ci.org/excellenteasy/grunt-less-config)

> Pass variables to the less parser before compiling.

## Getting Started
This plugin requires Grunt `~0.4.0`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-less-config --save-dev
```

One the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-less-config');
```

## The "less_config" task

### Options
In your project's Gruntfile, add a section named `lessConfig` to the data object passed into `grunt.initConfig()`.

In this example, custom options are used to add variables to a less file.

```js
grunt.initConfig({
  lessConfig: {
    your_target: {
      options: {
        background: 'red',
        margin: 0,
        'variable_name': 'variable_value'
      },
      files: {'output.less': ['input.less']}
    },
  },
})
```

## Contributing
**[Styleguide](http://github.com/excellenteasy/styleguides)**
Add unit tests for any new or changed functionality. Test your code using [Grunt](http://gruntjs.com/).
