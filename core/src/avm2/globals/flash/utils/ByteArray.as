package flash.utils {
	[Ruffle(InstanceAllocator)]
	public class ByteArray implements IDataInput, IDataOutput {
		private static var _defaultObjectEncoding:uint = 3;
		public static function get defaultObjectEncoding():uint {
			return _defaultObjectEncoding;
		}

		public static function set defaultObjectEncoding(encoding:uint):void {
			_defaultObjectEncoding = encoding;
		}

		public native function get bytesAvailable():uint;

		public native function get endian():String;
		public native function set endian(value:String):void;

		public native function get length():uint;
		public native function set length(value:uint):void;

		public native function get objectEncoding():uint;
		public native function set objectEncoding(value:uint):void;

		public native function get position():uint;
		public native function set position(value:uint):void;

		public function ByteArray() {
			this.init();
			this.objectEncoding = _defaultObjectEncoding;
		}

		private native function init():void;

		public native function clear():void;
		public native function compress(algorithm:String):void;
		public native function deflate():void;
		public native function inflate():void;
		public native function uncompress(algorithm:String):void;

		public native function toString():String;
		public function toJSON(k:String):String {
			return "ByteArray"
		}

		public native function readBoolean():Boolean;
		public native function readByte():int;
		public native function readBytes(bytes:ByteArray, offset:uint = 0, length:uint = 0):void;
		public native function readDouble():Number;
		public native function readFloat():Number;
		public native function readInt():int;
		public native function readMultiByte(length:uint, charSet:String):String;
		public native function readObject():*;
		public native function readShort():int;
		public native function readUnsignedByte():uint;
		public native function readUnsignedInt():uint;
		public native function readUnsignedShort():uint;
		public native function readUTF():String;
		public native function readUTFBytes(length:uint):String;

		public native function writeBoolean(value:Boolean):void;
		public native function writeByte(value:int):void;
		public native function writeBytes(bytes:ByteArray, offset:uint = 0, length:uint = 0):void;
		public native function writeDouble(value:Number):void;
		public native function writeFloat(value:Number):void;
		public native function writeInt(value:int):void;
		public native function writeMultiByte(value:String, charSet:String):void;
		public native function writeShort(value:int):void;
		public native function writeUnsignedInt(value:uint):void;
		public native function writeUTF(value:String):void;
		public native function writeUTFBytes(value:String):void;
		public native function writeObject(object:*):void;
	}
}
