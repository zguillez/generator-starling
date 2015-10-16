package com.ilusionarte.games.undefined {
	import starling.display.Sprite;
	import starling.utils.*;
	import starling.text.TextField;
	//---------------------------------------------------------
	public class Game extends Sprite {
		public function Game() {}
		public function start(): void {
			var textField: TextField = new TextField(this.stage.stageWidth, this.stage.stageHeight, "Hello World", "Arial", 60);
			addChild(textField);
		}
	}
}