package com.ilusionarte.games.undefined {
	//---------------------------------------------------------
	public class Engine {
		private static var __instance: Engine = new Engine();
		private var __config: Config = Config.getInstance();
		private var __scene_old: String;
		private var __scene: String;
		public var userScore: int = 0;
		//-----------------------------------------------------
		public function Engine() {
			if (__instance) {
				throw new Error("Use Singleton.getInstance()");
			}
		}
		public static function getInstance(): Engine {
			return __instance;
		}
		//-----------------------------------------------------
		public function init(): void {
			scene("menu");
		}
		public function scene(name: String): void {
			if(!__scene || __scene_old !== __scene){
				__scene_old = __scene;
				__scene = name;
				__config.root.addChild(__config.root[__scene]);
				__config.root[__scene].prepare(function () {
					__scene_start();
				});
			}
		}
		private function __scene_start(): void {
			if (__scene_old) {
				__config.root[__scene_old].stop();
				__config.root.removeChild(__config.root[__scene_old]);
			}
			__config.root[__scene].start();
		}
		public function scaleX(n: Number): Number {
			return n * __config.scaleX;
		}
		public function scaleY(n: Number): Number {
			return n * __config.scaleY;
		}
		public function centerX(obj: *): Number {
			return __config.stageWidth / 2 - obj.width / 2;
		}
		public function centerY(obj: *): Number {
			return __config.stageHeight / 2 - obj.height / 2;
		}
	}
}