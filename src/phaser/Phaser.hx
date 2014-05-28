package phaser;

@:native("Phaser")
extern class Phaser {
	
	static var AUTO:Int;
	static var CANVAS:Int;
	static var WEBGL:Int;
	static var HEADLESS:Int;
	
	static var NONE:Int;
	static var LEFT:Int;
	static var RIGHT:Int;
	static var UP:Int;
	static var DOWN:Int;
	
	static var SPRITE:Int;
	static var BUTTON:Int;
	static var IMAGE:Int;
	static var GRAPHICS:Int;
	static var TEXT:Int;
	static var TILESPRITE:Int;
	static var BITMAPTEXT:Int;
	static var GROUP:Int;
	static var RENDERTEXTURE:Int;
	static var TILEMAPLAYER:Int;
	static var EMITTER:Int;
	static var POLYGON:Int;
	static var BITMAPDATA:Int;
	static var CANVAS_FILTER:Int;
	static var WEBGL_FILTER:Int;
	static var ELLIPSE:Int;
	static var SPRITEBATCH:Int;
	static var RETROFONT:Int;

	static var Keyboard: {
		A:Int,
		B:Int,
		C:Int,
		D:Int,
		E:Int,
		F:Int,
		G:Int,
		H:Int,
		I:Int,
		J:Int,
		K:Int,
		L:Int,
		M:Int,
		N:Int,
		O:Int,
		P:Int,
		Q:Int,
		R:Int,
		S:Int,
		T:Int,
		U:Int,
		V:Int,
		W:Int,
		X:Int,
		Y:Int,
		Z:Int,
		ZERO:Int,
		ONE:Int,
		TWO:Int,
		THREE:Int,
		FOUR:Int,
		FIVE:Int,
		SIX:Int,
		SEVEN:Int,
		EIGHT:Int,
		NINE:Int,
		NUMPAD_0 :Int,
		NUMPAD_1 :Int,
		NUMPAD_2 :Int,
		NUMPAD_3 :Int,
		NUMPAD_4:Int,
		NUMPAD_5:Int,
		NUMPAD_6:Int,
		NUMPAD_7:Int,
		NUMPAD_8:Int,
		NUMPAD_9:Int,
		NUMPAD_MULTIPLY:Int,
		NUMPAD_ADD:Int,
		NUMPAD_ENTER:Int,
		NUMPAD_SUBTRACT:Int,
		NUMPAD_DECIMAL:Int,
		NUMPAD_DIVIDE:Int,
		F1:Int,
		F2:Int,
		F3:Int,
		F4:Int,
		F5:Int,
		F6:Int,
		F7:Int,
		F8:Int,
		F9:Int,
		F10:Int,
		F11:Int,
		F12:Int,
		F13:Int,
		F14:Int,
		F15:Int,
		COLON:Int,
		EQUALS:Int,
		UNDERSCORE:Int,
		QUESTION_MARK:Int,
		TILDE:Int,
		OPEN_BRACKET:Int,
		BACKWARD_SLASH:Int,
		CLOSED_BRACKET:Int,
		QUOTES:Int,
		BACKSPACE:Int,
		TAB:Int,
		CLEAR :Int,
		ENTER :Int,
		SHIFT :Int,
		CONTROL :Int,
		ALT :Int,
		CAPS_LOCK :Int,
		ESC :Int,
		SPACEBAR :Int,
		PAGE_UP :Int,
		PAGE_DOWN :Int,
		END :Int,
		HOME :Int,
		LEFT :Int,
		UP :Int,
		RIGHT :Int,
		DOWN :Int,
		INSERT :Int,
		DELETE :Int,
		HELP :Int,
		NUM_LOCK:Int
	};

	static var TILEMAP: {
		JSON:Int,
		CSV:Int
	};

	static var blendModes: {
        NORMAL:Int,
        ADD:Int,
        MULTIPLY:Int,
        SCREEN:Int,
        OVERLAY:Int,
        DARKEN:Int,
        LIGHTEN:Int,
        COLOR_DODGE:Int,
        COLOR_BURN:Int,
        HARD_LIGHT:Int,
        SOFT_LIGHT:Int,
        DIFFERENCE:Int,
        EXCLUSION:Int,
        HUE:Int,
        SATURATION:Int,
        COLOR:Int,
        LUMINOSITY:Int
    };
	
	static var scaleModes: {
        DEFAULT:Int,
        LINEAR:Int,
        NEAREST:Int
    };
	
}
