# generator-starling

[![npm version](https://badge.fury.io/js/generator-starling.svg)](https://badge.fury.io/js/generator-starling)
[![Code Climate](http://img.shields.io/codeclimate/github/zguillez/generator-starling.svg)](https://codeclimate.com/github/zguillez/generator-starling)
[![Build Status](http://img.shields.io/travis/zguillez/generator-starling.svg)](https://travis-ci.org/zguillez/generator-starling)
[![Coverage Status](http://img.shields.io/coveralls/zguillez/generator-starling.svg)](https://coveralls.io/r/zguillez/generator-starling)
[![Dependency Status](https://gemnasium.com/zguillez/generator-starling.svg)](https://gemnasium.com/zguillez/generator-starling)
![](https://reposs.herokuapp.com/?path=zguillez/generator-starling)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

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

## Usage

Initialize the project with a Grunt task:

	grunt init myProjectName

This will rename the **undefined.fla** file to **myProjectName.fla**

And rename the actionscript packages of classes *Main.as* and *Game.as* to **com.ilusionarte.games.myProjectName**   


