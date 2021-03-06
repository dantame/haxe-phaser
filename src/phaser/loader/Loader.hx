package phaser.loader;

@:native("Phaser.Loader")
extern class Loader {
	
	/**
	 * Phaser loader constructor.
	 * The Loader handles loading all external content such as Images, Sounds, Texture Atlases and data files.
	 * It uses a combination of Image() loading and xhr and provides progress and completion callbacks.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * Local reference to game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * Contains all the assets file infos.
	 */
	var _fileList:Array<Dynamic>;
	
	/**
	 * The index of the current file being loaded.
	 */
	var _fileIndex:Float;
	
	/**
	 * Indicates the size of 1 file in terms of a percentage out of 100.
	 */
	var _progressChunk:Float;
	
	/**
	 * An XMLHttpRequest object used for loading text and audio data.
	 */
	var _xhr:Dynamic;
	
	/**
	 * An ajax request used specifically by IE9 for CORs loading issues.
	 */
	var _ajax:Dynamic;
	
	/**
	 * True if the Loader is in the process of loading the queue.
	 */
	var isLoading:Bool;
	
	/**
	 * True if all assets in the queue have finished loading.
	 */
	var hasLoaded:Bool;
	
	/**
	 * The rounded load progress percentage value (from 0 to 100)
	 */
	var progress:Float;
	
	/**
	 * The non-rounded load progress value (from 0.0 to 100.0)
	 */
	var progressFloat:Float;
	
	/**
	 * You can optionally link a sprite to the preloader.
	 * If you do so the Sprites width or height will be cropped based on the percentage loaded.
	 */
	var preloadSprite:Dynamic;
	
	/**
	 * The crossOrigin value applied to loaded images. Very often this needs to be set to 'anonymous'.
	 */
	var crossOrigin:Dynamic;
	
	/**
	 * If you want to append a URL before the path of any asset you can set this here.
	 * Useful if you need to allow an asset url to be configured outside of the game code.
	 * MUST have / on the end of it!
	 */
	var baseURL:String;
	
	/**
	 * This event is dispatched when the loading process starts, before the first file has been requested.
	 */
	var onLoadStart:phaser.core.Signal;
	
	/**
	 * This event is dispatched immediately before a file starts loading. It's possible the file may still error (404, etc) after this event is sent.
	 */
	var onFileStart:phaser.core.Signal;
	
	/**
	 * This event is dispatched when a file completes loading successfully.
	 */
	var onFileComplete:phaser.core.Signal;
	
	/**
	 * This event is dispatched when a file errors as a result of the load request.
	 */
	var onFileError:phaser.core.Signal;
	
	/**
	 * This event is dispatched when the final file in the load queue has either loaded or failed.
	 */
	var onLoadComplete:phaser.core.Signal;
	
	/**
	 * @constant
	 */
	static var TEXTURE_ATLAS_JSON_ARRAY:Float;
	
	/**
	 * @constant
	 */
	static var TEXTURE_ATLAS_JSON_HASH:Float;
	
	/**
	 * @constant
	 */
	static var TEXTURE_ATLAS_XML_STARLING:Float;
	
	/**
	 * @constant
	 */
	static var PHYSICS_LIME_CORONA_JSON:Float;
	
	/**
	 * @constant
	 */
	static var PHYSICS_PHASER_JSON:Float;
	
	/**
	 * You can set a Sprite to be a "preload" sprite by passing it to this method.
	 * A "preload" sprite will have its width or height crop adjusted based on the percentage of the loader in real-time.
	 * This allows you to easily make loading bars for games. Note that Sprite.visible = true will be set when calling this.
	 */
	@:overload(function (sprite:phaser.gameobjects.Sprite, ?direction:Float = 0):Void {})
	function setPreloadSprite (sprite:phaser.gameobjects.Image, ?direction:Float = 0):Void;
	
	/**
	 * Check whether asset exists with a specific key.
	 */
	function checkKeyExists (type:String, key:String):Bool;
	
	/**
	 * Gets the fileList index for the given key.
	 */
	function getAssetIndex (type:String, key:String):Float;
	
	/**
	 * Gets the asset that is queued for load.
	 */
	function getAsset (type:String, key:String):Dynamic;
	
	/**
	 * Reset loader, this will remove the load queue.
	 */
	function reset ():Void;
	
	/**
	 * Internal function that adds a new entry to the file list. Do not call directly.
	 */
	function addToFileList (type:String, key:String, url:String, properties:Dynamic):Void;
	
	/**
	 * Internal function that replaces an existing entry in the file list with a new one. Do not call directly.
	 */
	function replaceInFileList (type:String, key:String, url:String, properties:Dynamic):Void;
	
	/**
	 * Add an image to the Loader.
	 */
	function image (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Add a text file to the Loader.
	 */
	function text (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Add a json file to the Loader.
	 */
	function json (key:String, url:String, ?overwrite:Bool = false):phaser.loader.Loader;
	
	/**
	 * Add a JavaScript file to the Loader. Once loaded the JavaScript file will be automatically turned into a script tag (and executed), so be careful what you load!
	 * You can also specify a callback. This will be executed as soon as the script tag has been created.
	 */
	function script (key:String, url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a binary file to the Loader. It will be loaded via xhr with a responseType of "arraybuffer". You can specify an optional callback to process the file after load.
	 * When the callback is called it will be passed 2 parameters: the key of the file and the file data.
	 * WARNING: If you specify a callback, the file data will be set to whatever your callback returns. So always return the data object, even if you didn't modify it.
	 */
	function binary (key:String, url:String, ?callback:Dynamic, ?callbackContext:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a new sprite sheet to the loader.
	 */
	function spritesheet (key:String, url:String, frameWidth:Float, frameHeight:Float, ?frameMax:Float, ?margin:Float = 0, ?spacing:Float = 0):phaser.loader.Loader;
	
	/**
	 * Add a new audio file to the loader.
	 */
	@:overload(function (key:String, urls:Array<Dynamic>, ?autoDecode:Bool = true):phaser.loader.Loader {})
	function audio (key:String, urls:String, ?autoDecode:Bool = true):phaser.loader.Loader;
	
	/**
	 * Add a new tilemap loading request.
	 */
	function tilemap (key:String, ?mapDataURL:String, ?mapData:Dynamic, ?format:Float):phaser.loader.Loader;
	
	/**
	 * Add a new physics data object loading request.
	 * The data must be in Lime + Corona JSON format. Physics Editor by code'n'web exports in this format natively.
	 */
	function physics (key:String, ?dataURL:String, ?jsonData:Dynamic, ?format:String):phaser.loader.Loader;
	
	/**
	 * Add a new bitmap font loading request.
	 */
	function bitmapFont (key:String, textureURL:String, ?xmlURL:String, ?xmlData:Dynamic, ?xSpacing:Float = 0, ?ySpacing:Float = 0):phaser.loader.Loader;
	
	/**
	 * Add a new texture atlas to the loader. This atlas uses the JSON Array data format.
	 */
	function atlasJSONArray (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a new texture atlas to the loader. This atlas uses the JSON Hash data format.
	 */
	function atlasJSONHash (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a new texture atlas to the loader. This atlas uses the Starling XML data format.
	 */
	function atlasXML (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic):phaser.loader.Loader;
	
	/**
	 * Add a new texture atlas to the loader.
	 */
	function atlas (key:String, textureURL:String, ?atlasURL:String, ?atlasData:Dynamic, ?format:Float):phaser.loader.Loader;
	
	/**
	 * Remove loading request of a file.
	 */
	function removeFile (type:String, key:String):Void;
	
	/**
	 * Remove all file loading requests.
	 */
	function removeAll ():Void;
	
	/**
	 * Start loading the assets. Normally you don't need to call this yourself as the StateManager will do so.
	 */
	function start ():Void;
	
	/**
	 * Load files. Private method ONLY used by loader.
	 */
	function loadFile ():Void;
	
	/**
	 * Private method ONLY used by loader.
	 */
	@:overload(function (urls:Array<Dynamic>):Void {})
	function getAudioURL (urls:String):Void;
	
	/**
	 * Error occured when loading a file.
	 */
	function fileError (index:Float):Void;
	
	/**
	 * Called when a file is successfully loaded.
	 */
	function fileComplete (index:Float):Void;
	
	/**
	 * Successfully loaded a JSON file.
	 */
	function jsonLoadComplete (index:Float):Void;
	
	/**
	 * Successfully loaded a CSV file.
	 */
	function csvLoadComplete (index:Float):Void;
	
	/**
	 * Error occured when load a JSON.
	 */
	function dataLoadError (index:Float):Void;
	
	/**
	 * Successfully loaded an XML file.
	 */
	function xmlLoadComplete (index:Float):Void;
	
}
