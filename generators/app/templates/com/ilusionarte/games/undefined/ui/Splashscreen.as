package com.ilusionarte.games.undefined.ui {
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	//---------------------------------------------------------
	public class Splashscreen extends Sprite {
		private var __root: Sprite;
		private var _timer: Timer;
		//---------------------------------------------------------
		public function Splashscreen(root, fullScreenWidth, fullScreenHeight) {
			this.__root = root;
			this.x = fullScreenWidth / 2;
			this.y = fullScreenHeight / 2;
			this.width = fullScreenWidth;
			this.height = fullScreenHeight;
		}
		public function add(): void {
			this.__root.addChild(this);
		}
		public function remove(): void {
			var scope: Object = this;
			this._timer = new Timer(1000, 1);
			this._timer.addEventListener(TimerEvent.TIMER, function () {
				scope.__root.removeChild(scope);
			});
			this._timer.start();
		}
	}
}