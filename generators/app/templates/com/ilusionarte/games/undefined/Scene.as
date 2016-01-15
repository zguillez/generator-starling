package com.ilusionarte.games.undefined {
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.display.Image;
	import starling.textures.Texture;
	import flash.display.BitmapData;
	import com.ilusionarte.games.undefined.Config;
	import com.ilusionarte.games.undefined.Engine;
	//---------------------------------------------------------
	public class Scene extends Sprite implements IScene {
		protected var __config: Config = Config.getInstance();
		protected var __engine: Engine = Engine.getInstance();
		protected var __background: Image;
		protected var __ready: Boolean = false;
		//-----------------------------------------------------
		public function Scene() {}
		public function prepare(callback): void {
			if (!__ready) {
				trace('prepare scene1');
			}
			callback();

		}
		public function start(): void {
			trace('start scene1');
		}
		public function stop(): void {
			trace('stop scene1');
			Starling.juggler.purge();
		}
		public function set background(bitmap: BitmapData) {
			__background = new Image(Texture.fromBitmapData(bitmap));
			__background.x = 0;
			__background.y = 0;
			__background.width = __config.stageWidth;
			__background.height = __config.stageHeight;
			this.addChild(__background);
		}
	}
}