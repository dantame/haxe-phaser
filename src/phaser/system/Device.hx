package phaser.system;

@:native("Phaser.Device")
extern class Device {
	
	/**
	 * Detects device support capabilities. Using some elements from System.js by MrDoob and Modernizr
	 */
	function new ();
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Is running desktop?
	 */
	var desktop:Bool;
	
	/**
	 * Is running on iOS?
	 */
	var iOS:Bool;
	
	/**
	 * Is the game running under CocoonJS?
	 */
	var cocoonJS:Bool;
	
	/**
	 * Is the game running under Ejecta?
	 */
	var ejecta:Bool;
	
	/**
	 * Is the game running under the Intel Crosswalk XDK?
	 */
	var crosswalk:Bool;
	
	/**
	 * Is running on android?
	 */
	var android:Bool;
	
	/**
	 * Is running on chromeOS?
	 */
	var chromeOS:Bool;
	
	/**
	 * Is running on linux?
	 */
	var linux:Bool;
	
	/**
	 * Is running on macOS?
	 */
	var macOS:Bool;
	
	/**
	 * Is running on windows?
	 */
	var windows:Bool;
	
	/**
	 * Is running on a Windows Phone?
	 */
	var windowsPhone:Bool;
	
	/**
	 * Is canvas available?
	 */
	var canvas:Bool;
	
	/**
	 * Is file available?
	 */
	var file:Bool;
	
	/**
	 * Is fileSystem available?
	 */
	var fileSystem:Bool;
	
	/**
	 * Is localStorage available?
	 */
	var localStorage:Bool;
	
	/**
	 * Is webGL available?
	 */
	var webGL:Bool;
	
	/**
	 * Is worker available?
	 */
	var worker:Bool;
	
	/**
	 * Is touch available?
	 */
	var touch:Bool;
	
	/**
	 * Is mspointer available?
	 */
	var mspointer:Bool;
	
	/**
	 * Is css3D available?
	 */
	var css3D:Bool;
	
	/**
	 * Is Pointer Lock available?
	 */
	var pointerLock:Bool;
	
	/**
	 * Does the browser support TypedArrays?
	 */
	var typedArray:Bool;
	
	/**
	 * Does the device support the Vibration API?
	 */
	var vibration:Bool;
	
	/**
	 * Does the device support the getUserMedia API?
	 */
	var getUserMedia:Bool;
	
	/**
	 * Is the browser running in strict mode (false) or quirks mode? (true)
	 */
	var quirksMode:Bool;
	
	/**
	 * Set to true if running in Arora.
	 */
	var arora:Bool;
	
	/**
	 * Set to true if running in Chrome.
	 */
	var chrome:Bool;
	
	/**
	 * Set to true if running in Epiphany.
	 */
	var epiphany:Bool;
	
	/**
	 * Set to true if running in Firefox.
	 */
	var firefox:Bool;
	
	/**
	 * Set to true if running in Internet Explorer.
	 */
	var ie:Bool;
	
	/**
	 * If running in Internet Explorer this will contain the major version number. Beyond IE10 you should use Device.trident and Device.tridentVersion.
	 */
	var ieVersion:Float;
	
	/**
	 * Set to true if running a Trident version of Internet Explorer (IE11+)
	 */
	var trident:Bool;
	
	/**
	 * If running in Internet Explorer 11 this will contain the major version number. See <a href='http://msdn.microsoft.com/en-us/library/ie/ms537503(v=vs.85).aspx'>http://msdn.microsoft.com/en-us/library/ie/ms537503(v=vs.85).aspx</a>
	 */
	var tridentVersion:Float;
	
	/**
	 * Set to true if running in Mobile Safari.
	 */
	var mobileSafari:Bool;
	
	/**
	 * Set to true if running in Midori.
	 */
	var midori:Bool;
	
	/**
	 * Set to true if running in Opera.
	 */
	var opera:Bool;
	
	/**
	 * Set to true if running in Safari.
	 */
	var safari:Bool;
	
	/**
	 * Set to true if running as a WebApp, i.e. within a WebView
	 */
	var webApp:Bool;
	
	/**
	 * Set to true if running in the Silk browser (as used on the Amazon Kindle)
	 */
	var silk:Bool;
	
	/**
	 * Are Audio tags available?
	 */
	var audioData:Bool;
	
	/**
	 * Is the WebAudio API available?
	 */
	var webAudio:Bool;
	
	/**
	 * Can this device play ogg files?
	 */
	var ogg:Bool;
	
	/**
	 * Can this device play opus files?
	 */
	var opus:Bool;
	
	/**
	 * Can this device play mp3 files?
	 */
	var mp3:Bool;
	
	/**
	 * Can this device play wav files?
	 */
	var wav:Bool;
	
	/**
	 * Can this device play m4a files?
	 */
	var m4a:Bool;
	
	/**
	 * Can this device play webm files?
	 */
	var webm:Bool;
	
	/**
	 * Is running on iPhone?
	 */
	var iPhone:Bool;
	
	/**
	 * Is running on iPhone4?
	 */
	var iPhone4:Bool;
	
	/**
	 * Is running on iPad?
	 */
	var iPad:Bool;
	
	/**
	 * PixelRatio of the host device?
	 */
	var pixelRatio:Float;
	
	/**
	 * Is the device big or little endian? (only detected if the browser supports TypedArrays)
	 */
	var littleEndian:Bool;
	
	/**
	 * Does the device context support 32bit pixel manipulation using array buffer views?
	 */
	var support32bit:Bool;
	
	/**
	 * Does the browser support the Full Screen API?
	 */
	var fullscreen:Bool;
	
	/**
	 * If the browser supports the Full Screen API this holds the call you need to use to activate it.
	 */
	var requestFullscreen:String;
	
	/**
	 * If the browser supports the Full Screen API this holds the call you need to use to cancel it.
	 */
	var cancelFullscreen:String;
	
	/**
	 * Does the browser support access to the Keyboard during Full Screen mode?
	 */
	var fullscreenKeyboard:Bool;
	
	/**
	 * Check which OS is game running on.
	 */
	function _checkOS ():Void;
	
	/**
	 * Check HTML5 features of the host environment.
	 */
	function _checkFeatures ():Void;
	
	/**
	 * Checks for support of the Full Screen API.
	 */
	function checkFullScreenSupport ():Void;
	
	/**
	 * Check what browser is game running in.
	 */
	function _checkBrowser ():Void;
	
	/**
	 * Check audio support.
	 */
	function _checkAudio ():Void;
	
	/**
	 * Check PixelRatio, iOS device, Vibration API, ArrayBuffers and endianess.
	 */
	function _checkDevice ():Void;
	
	/**
	 * Check Little or Big Endian system.
	 */
	function _checkIsLittleEndian ():Void;
	
	/**
	 * Test to see if ImageData uses CanvasPixelArray or Uint8ClampedArray.
	 */
	function _checkIsUint8ClampedImageData ():Void;
	
	/**
	 * Check whether the host environment support 3D CSS.
	 */
	function _checkCSS3D ():Void;
	
	/**
	 * Check whether the host environment can play audio.
	 */
	function canPlayAudio (type:String):Bool;
	
	/**
	 * Check whether the console is open.
	 * Note that this only works in Firefox with Firebug and earlier versions of Chrome.
	 * It used to work in Chrome, but then they removed the ability: <a href='http://src.chromium.org/viewvc/blink?view=revision&amp;revision=151136'>http://src.chromium.org/viewvc/blink?view=revision&amp;revision=151136</a>
	 */
	function isConsoleOpen ():Bool;
	
}
