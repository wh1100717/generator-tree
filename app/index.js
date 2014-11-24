'use strict';
var util = require('util');
var path = require('path');
var yeoman = require('yeoman-generator');
var yosay = require('yosay');
var chalk = require('chalk');

var TreeGenerator = yeoman.generators.Base.extend({
  initializing: function () {
    this.pkg = require('../package.json');
  },

  prompting: function () {
    var done = this.async();

    // Have Yeoman greet the user.
    this.log(yosay(
      'Welcome to the Tree Generator!\n' +
      'This is build for the forest scaffolding!'
    ))

    var prompts = [{
      type: 'input',
      name: 'name',
      message: 'Input your project name pls.',
      default: this.appname
    }];

    this.prompt(prompts, function (answers) {
      this.appname = answers.name
      done();
    }.bind(this));
  },

  writing: {
    app: function () {
      this.dest.mkdir('src');
      this.dest.mkdir('src/js');
      this.dest.mkdir('src/less');
      this.dest.mkdir('test');

      this.template('_package.json', 'package.json');
      this.template('_bower.json', 'bower.json');
      this.src.copy('_gitignore', '.gitignore');
      this.src.copy('coffeelint.json', 'coffeelint.json');
      this.src.copy('karma.conf.coffee', 'karma.conf.coffee');
      this.src.copy('Gruntfile.coffee', 'Gruntfile.coffee');
      this.src.copy('test/jasmineSpec.coffee', 'test/jasmineSpec.coffee');
      this.src.copy('test/test-main.coffee', 'test/test-main.coffee');

      this.template('js/coffee.tpl', 'src/js/' + this.appname + '.coffee')
      this.template('less/less.tpl', 'src/less/' + this.appname + '.less')
      this.template('index.html', 'index.html');
    },

    projectfiles: function () {
      this.src.copy('editorconfig', '.editorconfig');
      this.src.copy('jshintrc', '.jshintrc');
    }
  },

  end: function () {
    this.installDependencies();
  }
});

module.exports = TreeGenerator;
