package com.ilusionarte.games.undefined.scenes {
	import com.ilusionarte.games.undefined.Scene;
	import starling.core.Starling;
	import starling.utils.*;
	import starling.display.Sprite;
	import starling.display.Image;
	import starling.textures.Texture;
	import starling.events.Event;
	import feathers.controls.Button;
	//---------------------------------------------------------
	public class Scene2 extends Scene {
		private var __button: Button;
		//-----------------------------------------------------
		public function Scene2() {}
		public override function prepare(callback): void {
			if (!__ready) {
				trace('prepare scene2');

				this.background = new Background2();

				__ready = true;
			}
			callback();
		}
		public override function start(): void {
			trace('start scene2');

			__button = new Button();
			__button.label = "BACK";
			__button.x = __engine.scaleX(10);
			__button.y = __engine.scaleY(10);
			__button.width = __engine.scaleX(120);
			__button.height = __engine.scaleY(60);
			__button.addEventListener(Event.TRIGGERED, function (e: Event ) {
				trace('click');
				__engine.scene("menu");
			});
			this.addChild(__button);

		}
		public override function stop(): void {
			trace('stop scene2');

			if(__button){
				this.removeChild(__button);
			}

			Starling.juggler.purge();
		}
	}
}