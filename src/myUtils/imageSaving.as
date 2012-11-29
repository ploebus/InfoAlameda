package myUtils
{
	import flash.display.BitmapData;
	import flash.geom.Matrix;
	import flash.utils.ByteArray;
	
	import mx.core.UIComponent;
	import mx.graphics.codec.*;
	import mx.utils.Base64Encoder;
	
	public class imageSaving
	{
		public var theEncoder:PNGEncoder=new PNGEncoder();
		
		public function imageSaving()
		{
		
		
		}
	public static function getBitmapData(target:UIComponent) : BitmapData
		{
		var bd :BitmapData = new BitmapData( target.width, target.height );
		var m :Matrix = new Matrix();
		bd.draw( target, m );
		return bd;
		}
	
	public static function getPNG(target:UIComponent):ByteArray {
		var theEncoder:PNGEncoder=new PNGEncoder();
		return theEncoder.encode(getBitmapData(target));
		}
	
	public static function getJPG(target:UIComponent, quality:Number):ByteArray {
		var theEncoder:JPEGEncoder=new JPEGEncoder(quality);
		return theEncoder.encode(getBitmapData(target));
		}
	
	public static function getBase64EncodedPng(target:UIComponent):String {
		return getBase64EncodedByteArray(getPNG(target));
		}
	
	public static function getBase64EncodedJpg(target:UIComponent):String {
		return getBase64EncodedByteArray(getJPG(target, 100));
		}
	
	public static function getBase64EncodedByteArray(ba:ByteArray):String {
		var encoder:Base64Encoder = new Base64Encoder();
		encoder.encodeBytes(ba);
		return encoder.flush();
		} 
	
	}
}