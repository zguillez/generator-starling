package com.ilusionarte.games.undefined {
	//---------------------------------------------------------
	public class Config {
		private static var __instance: Config = new Config();
		private var __iniStageWidth: Number = 480;
		private var __iniStageHeight: Number = 800;
		private var __stageWidth: Number;
		private var __stageHeight: Number;
		private var __scaleX: Number;
		private var __scaleY: Number;
		private var __root: Object;
		//-----------------------------------------------------
		public function Config() {
			if (__instance) {
				throw new Error("Use Singleton.getInstance()");
			}
		}
		public static function getInstance(): Config {
			return __instance;
		}
		//-----------------------------------------------------
		public function set root(o: Object) {
			__root = o;
			__stageWidth = __root.stage.stageWidth;
			__stageHeight = __root.stage.stageHeight;
			__scaleX = __stageWidth / __iniStageWidth;
			__scaleY = __stageHeight / __iniStageHeight;
		}
		public function get root(): Object {
			return __root;
		}
		public function get stageWidth(): Number {
			return __stageWidth;
		}
		public function get stageHeight(): Number {
			return __stageHeight;
		}
		public function get scaleX(): Number {
			return __scaleX;
		}
		public function get scaleY(): Number {
			return __scaleY;
		}
	}
}