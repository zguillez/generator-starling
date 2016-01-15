package com.ilusionarte.games.undefined.scenes {
	import com.ilusionarte.games.undefined.Scene;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import starling.core.Starling;
	import starling.utils.*;
	import starling.display.Sprite;
	import starling.display.MovieClip;
	import starling.display.Image;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import starling.text.TextField;
	import starling.text.TextFieldAutoSize;
	import starling.animation.Tween;
	//---------------------------------------------------------
	public class Scene1 extends Scene {
		private var __xml: XML;
		private var __movie: MovieClip;
		private var __textField: TextField;
		//-----------------------------------------------------
		public function Scene1() {}
		public override function prepare(callback): void {
			if (!__ready) {
				trace('prepare scene1');

				this.background = new Background();

				__textField = new TextField(__config.stageWidth, __config.stageHeight, __config.stageWidth + "x" + __config.stageHeight + " [" + __config.scaleX + "*" + __config.scaleY + "]", "Arial", 32, 0xff2200);
				__textField.border = true;
				__textField.hAlign = HAlign.LEFT;
				__textField.vAlign = VAlign.TOP;
				__textField.autoSize = TextFieldAutoSize.BOTH_DIRECTIONS;
				__textField.x = 0;
				__textField.y = __config.stageHeight - __textField.height;
				this.addChild(__textField);

				var scope: Object = this;
				var loader: URLLoader = new URLLoader();
				loader.load(new URLRequest("textures/fly.xml"));
				loader.addEventListener(Event.COMPLETE, function (e: Event): void {

					var texture: Texture = Texture.fromBitmapData(new FlyTexture());
					var atlas: TextureAtlas = new TextureAtlas(texture, new XML(e.target.data));
					scope.__movie = new MovieClip(atlas.getTextures("fly_"), 15);
					scope.__movie.x = -__engine.scaleX(scope.__movie.width);
					scope.__movie.y = __config.stageHeight / 2 - scope.__movie.height / 2;
					scope.__movie.scaleX = __config.scaleX;
					scope.__movie.scaleY = __config.scaleY;
					scope.addChild(scope.__movie);

					texture = Texture.fromBitmapData(new Point());
					var point = new Image(texture);
					point.x = 0;
					point.y = 0;
					scope.addChild(point);

					__ready = true;
					callback();
				});
			} else {
				callback();
			}
		}
		public override function start(): void {
			trace('start scene1');

			__movie.play();

			var tween: Tween = new Tween(__movie, 2);
			tween.animate("x", __config.stageWidth);
			tween.onComplete = function () {
				__engine.scene("scene2");
			}

			Starling.juggler.delayCall(function () {
				Starling.juggler.add(__movie);
				Starling.juggler.add(tween);
			}, 2);
		}
		public override function stop(): void {
			trace('stop scene1');

			__movie.x = -__engine.scaleX(__movie.width);
			__movie.stop();

			Starling.juggler.purge();

		}
	}
}