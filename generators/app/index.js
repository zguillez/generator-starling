'use strict';
var yeoman = require('yeoman-generator');
var chalk = require('chalk');
var yosay = require('yosay');
module.exports = yeoman.Base.extend({
	initializing: function() {
		this.pkg = require('../../package.json');
	},
	prompting: function() {
		var done = this.async();
		this.log(yosay('Welcome to the zetadelic ' + chalk.red('Starling v' + this.pkg.version) + ' generator!'));
		var prompts = [];
		this.prompt(prompts, function(props) {
			this.props = props;
			done();
		}.bind(this));
	},
	writing: {
		app: function() {
			this.fs.copy(this.templatePath('com'), this.destinationPath('com'));
			this.fs.copy(this.templatePath('Gruntfile.js'), this.destinationPath('Gruntfile.js'));
			this.fs.copy(this.templatePath('lib'), this.destinationPath('lib'));
			this.fs.copy(this.templatePath('textures'), this.destinationPath('textures'));
			this.fs.copy(this.templatePath('package.json'), this.destinationPath('package.json'));
			this.fs.copy(this.templatePath('bower.json'), this.destinationPath('bower.json'));
			this.fs.copy(this.templatePath('undefined-app.xml'), this.destinationPath('undefined-app.xml'));
			this.fs.copy(this.templatePath('undefined.fla'), this.destinationPath('undefined.fla'));
		},
		projectfiles: function() {
			this.fs.copy(this.templatePath('editorconfig'), this.destinationPath('.editorconfig'));
			this.fs.copy(this.templatePath('jshintrc'), this.destinationPath('.jshintrc'));
			this.fs.copy(this.templatePath('bowerrc'), this.destinationPath('.bowerrc'));
		}
	},
	install: function() {
		this.installDependencies();
	}
});