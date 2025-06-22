package;

import se.App;
import se.Window;
import s2d.WindowScene;
import s2d.elements.Text;

class Main {
	public static function main() {
		App.start({
			title: "Untitled",
			width: 1920,
			height: 1080
		}, setup);
	}

	static function setup(window:Window) {
		var scene = new WindowScene(window);
		scene.active = true;
		scene.padding = 50;

		scene.addChild({
			var text = new Text("Hello, World!");
			text.alignment = AlignCenter;
			text.anchors.margins = 50;
			text.anchors.fill(scene);
			text.color = Black;
			text.fontSize = 64;
			text;
		});
	}
}
