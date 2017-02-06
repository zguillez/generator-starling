# generator-starling

[![Greenkeeper badge](https://badges.greenkeeper.io/zguillez/generator-starling.svg)](https://greenkeeper.io/)

[![Join the chat at https://gitter.im/zguillez/generator-starling](https://badges.gitter.im/zguillez/generator-starling.svg)](https://gitter.im/zguillez/generator-starling?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![npm version](https://badge.fury.io/js/generator-starling.svg)](https://badge.fury.io/js/generator-starling)
[![Build Status](http://img.shields.io/travis/zguillez/generator-starling.svg)](https://github.com/zguillez/generator-starling)
[![Code Climate](http://img.shields.io/codeclimate/github/zguillez/generator-starling.svg)](https://codeclimate.com/github/zguillez/generator-starling)
[![Dependency Status](https://gemnasium.com/zguillez/generator-starling.svg)](https://gemnasium.com/zguillez/generator-starling)
[![Installs](https://img.shields.io/npm/dt/generator-starling.svg)](https://coveralls.io/r/zguillez/generator-starling)
![](https://reposs.herokuapp.com/?path=zguillez/generator-starling)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)
[![Analytics](https://ga-beacon.appspot.com/UA-1125217-30/zguillez/generator-starling?pixel)](https://github.com/igrigorik/ga-beacon)

> [Zguillez](https://zguillez.io) | Guillermo de la Iglesia

### Yeoman generator for Adobe Flash Mobile application with Starling

![](http://zguillez.github.io/img/starling.png)

## Getting Started

### Install Yeoman

	npm install -g yo

### Yeoman Generators

To install generator-starling from npm, run:

	npm install -g generator-starling

Finally, initiate the generator:

	yo starling

If you have error on install try to update dependences manually:

```bash
sudo npm update
```

## Requeriments

### NodeJS

* [https://nodejs.org/](https://nodejs.org/)

For update npm

	sudo npm install npm -g

# Usage

Initialize the project with a Grunt task:

	grunt init:myProjectName

This will rename the **undefined.fla** file to **myProjectName.fla**

And rename the actionscript packages of classes *Main.as* and *Game.as* to **com.ilusionarte.games.myProjectName**   

# Contributing and issues
Contributors are welcome, please fork and send pull requests! If you have any ideas on how to make this project better then please submit an issue or send me an [email](mailto:mail@zguillez.io).

# License
©2016 Zguillez.io

Original code licensed under [MIT](https://en.wikipedia.org/wiki/MIT_License) Open Source projects used within this project retain their original licenses.

# Changelog
### v2.0.0 (January 16, 2016)
- Include Feathers UI 2.3.0
- Include Feathers themes
- New initial dummy project with navigation

### v1.0.0 (January 12, 2016)
- Fix yo install version

### v0.1.0 (October 16, 2015)
Initial Starling Framework skeleton