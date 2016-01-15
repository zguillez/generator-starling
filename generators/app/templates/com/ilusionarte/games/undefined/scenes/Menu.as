package com.ilusionarte.games.undefined.scenes {
	import com.ilusionarte.games.undefined.Scene;
	import starling.core.Starling;
	import starling.utils.*;
	import starling.display.Sprite;
	import starling.events.Event;
	import feathers.controls.Button;
	//---------------------------------------------------------
	public class Menu extends Scene {
		private var __menu: Sprite;
		private var __numButtons: int = 0;
		private var __buttonWidth: int = 380;
		private var __buttonHeight: int = 80;
		private var __padding: int = 20;
		public function Menu() {}
		public override function prepare(callback): void {
			if (!__ready) {
				trace('prepare menu');

				this.background = new Background();

				__ready = true;
			}
			callback();
		}
		public override function start(): void {
			trace('start menu');

			__menu = new Sprite();

			this.createButton("SCENE1", function (e: Event) {
				trace('click');
				__engine.scene("scene1");
			});

			this.createButton("SCENE2", function (e: Event) {
				trace('click');
				__engine.scene("scene2");
			});

			__menu.x = __engine.centerX(__menu);
			__menu.y = __engine.centerY(__menu);
			this.addChild(__menu);

		}
		public override function stop(): void {
			trace('stop menu');

			if (__menu) {
				this.removeChild(__menu);
				__numButtons = 0;
			}
		}
		//-----------------------------------------------------
		private function createButton(label: String, action: Function): void {
			var button = new Button();
			button.label = label;
			button.width = __engine.scaleX(__buttonWidth);
			button.height = __engine.scaleY(__buttonHeight);
			button.x = 0;
			button.y = (button.height + __engine.scaleY(__padding)) * __numButtons;
			button.addEventListener(Event.TRIGGERED, action);
			__menu.addChild(button);
			__numButtons++;
		}
	}
}