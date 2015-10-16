# generator-starling
[![Build Status](https://secure.travis-ci.org/zguillez/generator-symfonangular.png?branch=master)](https://travis-ci.org/zguillez/generator-symfonangular) [![Code Climate](https://codeclimate.com/github/zguillez/generator-symfonangular/badges/gpa.svg)](https://codeclimate.com/github/zguillez/generator-symfonangular) [![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/zguillez/generator-symfonangular/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/zguillez/generator-symfonangular/?branch=master)

> [Zguillez](https://zguillez.io) | Guillermo de la Iglesia

### Yeoman generator for Adobe Flash Mobile application with Starling

![](http://zguillez.github.io/img/starling.png)

## Getting Started

### Install Yeoman

	npm install -g yo

### Yeoman Generators

To install generator-symfonangular from npm, run:

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


