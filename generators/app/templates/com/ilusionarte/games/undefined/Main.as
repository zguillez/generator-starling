package com.ilusionarte.games.undefined {
	import flash.system.Capabilities;
	import flash.display.Sprite;
	import flash.display.BitmapData
	import flash.geom.Rectangle;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import starling.core.Starling;
	import starling.events.Event;
	import starling.utils.RectangleUtil;
	import starling.utils.ScaleMode;
	import com.ilusionarte.games.undefined.Game;
	import com.ilusionarte.games.undefined.ui.Splashscreen;
	//---------------------------------------------------------
	public class Main extends Sprite {
		private var __starling: Starling;
		private var __viewPort: Rectangle;
		private var _splashscreen: Splashscreen;
		private var _timer: Timer;
		private var _game:Game;
		//---------------------------------------------------------
		public function Main() {
			this._splashscreen = new Splashscreen(this, this.stage.fullScreenWidth, this.stage.fullScreenHeight);
			this._splashscreen.add();
			if (stage) {
				this.onAddedToStage();
			} else {
				addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
			}
		}
		private function onAddedToStage(event: Event = null): void {
			removeEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
			__viewPort = RectangleUtil.fit(
				new Rectangle(0, 0, this.stage.fullScreenWidth, this.stage.fullScreenHeight),
				new Rectangle(0, 0, this.stage.fullScreenWidth, this.stage.fullScreenHeight),
				ScaleMode.SHOW_ALL);
			__starling = new Starling(Game, stage, __viewPort);
			__starling.stage.stageWidth = __viewPort.width;
			__starling.stage.stageHeight = __viewPort.height;
			__starling.antiAliasing = 1;
			__starling.start();
			__starling.addEventListener(Event.ROOT_CREATED, this.onRootCreated);
		}
		private function onRootCreated(event: Event, game: * ): void {
			removeEventListener(Event.ROOT_CREATED, this.onRootCreated);
			this._game = game;
			this._timer = new Timer(2000, 1);
			this._timer.addEventListener(TimerEvent.TIMER, init);
			this._timer.start();
		}
		private function init(e: TimerEvent): void {
			this._game.start();
			this._splashscreen.remove();
		}
	}
}