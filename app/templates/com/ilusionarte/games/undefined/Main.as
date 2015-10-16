package com.ilusionarte.games.undefined {
	import flash.display.Sprite;
	import flash.geom.Rectangle;
	import starling.core.Starling;
	import starling.events.Event;
	import com.ilusionarte.games.undefined.Game;
	//---------------------------------------------------------
	public class Main extends Sprite {
		private var __starling: Starling;
		private var __viewPort: Rectangle;
		//---------------------------------------------------------
		public function Main() {
			if (stage) {
				onAddedToStage();
			} else {
				addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			}
		}
		private function onAddedToStage(event: Event = null): void {
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			__viewPort = new Rectangle(0, 0, this.stage.stageWidth, this.stage.stageHeight);
			__starling = new Starling(Game, stage, __viewPort);
			__starling.stage.stageWidth = __viewPort.width;
			__starling.stage.stageHeight = __viewPort.height;
			__starling.start();
			__starling.addEventListener(Event.ROOT_CREATED, onRootCreated);
		}
		private function onRootCreated(event: Event, game: * ): void {
			removeEventListener(Event.ROOT_CREATED, onRootCreated);
			game.start();
		}
	}
}