module.exports = function(grunt) {
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		replace: {
			package: {
				src: ['package.json'],
				overwrite: true,
				replacements: [{
					from: /undefined/g,
					to: 'undefined'
				}]
			},
			actionscript: {
				src: ['com/ilusionarte/games/undefined/*.as'],
				overwrite: true,
				replacements: [{
					from: /undefined/g,
					to: 'undefined'
				}]
			},
			xml: {
				src: ['undefined-app.xml'],
				overwrite: true,
				replacements: [{
					from: /undefined/g,
					to: 'undefined'
				}]
			}
		},
		rename: {
			package: {
				src: 'com/ilusionarte/games/undefined',
				dest: 'com/ilusionarte/games/undefined',
				options: {}
			},
			fla: {
				src: 'undefined.fla',
				dest: 'undefined.fla',
				options: {}
			},
			xml: {
				src: 'undefined-app.xml',
				dest: 'undefined.fla',
				options: {}
			}
		}
	});
	grunt.loadNpmTasks('grunt-text-replace');
	grunt.loadNpmTasks('grunt-rename');
	grunt.registerTask('default', []);
	grunt.task.registerTask('init', function(filename) {
		grunt.config.set('replace.package.replacements.0.to', filename);
		grunt.config.set('replace.actionscript.replacements.0.to', filename);
		grunt.config.set('replace.xml.replacements.0.to', filename);
		grunt.config.set('rename.fla.dest', filename + '.fla');
		grunt.config.set('rename.xml.dest', filename + '-app.xml');
		grunt.config.set('rename.package.dest', 'com/ilusionarte/games/' + filename);
		grunt.task.run('replace');
		grunt.task.run('rename');
	});
};