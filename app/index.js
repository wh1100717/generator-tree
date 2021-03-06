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
      this.Appname = answers.name.substring(0,1).toUpperCase() + answers.name.substring(1)
      done();
    }.bind(this));
  },

  writing: {
    app: function () {
      this.template('_package.json', 'package.json');
      this.template('_bower.json', 'bower.json');
      this.src.copy('_gitignore', '.gitignore');
      this.src.copy('coffeelint.json', 'coffeelint.json');
      this.src.copy('Gruntfile.coffee', 'Gruntfile.coffee');
      this.src.copy('Gruntfile.js', 'Gruntfile.js');

      this.dest.mkdir('view');
      this.dest.mkdir('src');
      this.dest.mkdir('src/img');
      this.dest.mkdir('src/js');
      this.dest.mkdir('src/less');
      this.dest.mkdir('src/module');
      this.dest.mkdir('src/tpl');

      this.src.copy('view/index.html', 'view/index.html');
      this.template('js/seed_coffee.tpl', 'src/js/seed.coffee');
      this.template('js/seed_js.tpl', 'src/js/seed.js');
      this.src.copy('img/bg-body.png', 'src/img/bg-body.png');
      this.src.copy('img/favicon.ico', 'src/img/favicon.ico');
      this.src.copy('img/logo.png', 'src/img/logo.png');
      this.src.copy('js/home.coffee', 'src/js/home.coffee');
      this.src.copy('js/home.js', 'src/js/home.js');
      this.template('less/less.tpl', 'src/less/' + this.appname + '.less');
      this.src.copy('module/module1.coffee', 'src/module/module1.coffee');
      this.src.copy('module/module1.js', 'src/module/module1.js');
      this.src.copy('tpl/index.tpl', 'src/tpl/index.tpl');
      this.template('tpl/layout.tpl', 'src/tpl/layout.tpl');
    },

    projectfiles: function () {
      this.src.copy('editorconfig', '.editorconfig');
    }
  },

  end: function () {
    this.installDependencies();
  }
});

module.exports = TreeGenerator;
