package com.ilusionarte.games.undefined {
	import starling.display.Sprite;
	import feathers.themes.TopcoatLightMobileTheme;
	import com.ilusionarte.games.undefined.Config;
	import com.ilusionarte.games.undefined.Engine;
	import com.ilusionarte.games.undefined.scenes.Menu;
	import com.ilusionarte.games.undefined.scenes.Scene1;
	import com.ilusionarte.games.undefined.scenes.Scene2;
	//---------------------------------------------------------
	public class Game extends Sprite {
		private var __config: Config = Config.getInstance();
		private var __engine: Engine = Engine.getInstance();
		public var menu: Scene = new Menu();
		public var scene1: Scene = new Scene1();
		public var scene2: Scene = new Scene2();
		//---------------------------------------------------------
		public function Game() {}
		public function start(): void {
			new TopcoatLightMobileTheme();
			__config.root = this;
			__engine.init();
		}
	}
}