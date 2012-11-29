package infoWidgets.BatchGeocoder.helpers
{
	import flash.net.FileReference;
	
	import mx.utils.StringUtil;

	public class exportToKml
	{
		import com.as3xls.xls.ExcelFile;
		import com.as3xls.xls.Sheet;
		
		import flash.events.Event;
		import flash.utils.ByteArray;
		
		import mx.collections.ArrayCollection;
		import mx.controls.DataGrid;
		import mx.controls.dataGridClasses.DataGridColumn;
		import mx.logging.ILogger;
		
		protected var _fields:Array;
		
		public function exportToKml()
		{
		}
		
		
		public function get fields():Array
		{
			return _fields;
		}

		public function set fields(value:Array):void
		{
			_fields = value;
		}

		protected function dispose(event:Event):void
		{
			event.currentTarget.removeEventListener(Event.COMPLETE, onFileSaveComplete_handler);
			event.currentTarget.removeEventListener(Event.CANCEL, onFileReferenceCancel_handler);
			_fields = [];
		}
				
		
		
		protected function onFileReferenceCancel_handler(event:Event):void
		{
			this.dispose(event);
		}
		
		protected function onFileSaveComplete_handler(event:Event):void
		{
			this.dispose(event);
		}
		
		public function collectionToKml(collection:ArrayCollection):void
		{
			
			var xmlString:String = '<?xml version="1.0" encoding="UTF-8" ?>\n';
			xmlString += '<kml xmlns="http://www.opengis.net/kml/2.2"><Document>\n';
			
			for each (var item:Object in collection){
				if(item[0].value != ''){
				xmlString += "<Placemark>\n";
				xmlString += "<name>"+ item[0]+"</name>\n";
				xmlString += "<description><![CDATA[<table>";
				for (var s:String in item)
					{
						xmlString+="<tr><td>"+ _fields[Number(s)]+ ":"+item[s]+"</td></tr>";
					}
				xmlString+="</table>]]></description>\n";
				
				xmlString += "<Point><coordinates>"+ item.x + ","+item.y+",0</coordinates></Point>\n";
				xmlString += "</Placemark>\n";
				}
			}
			xmlString += "</Document></kml>";
			xmlString = StringUtil.trim(xmlString)
			var bytes:ByteArray=new ByteArray();
				//bytes.writeUTF(xmlString);
				bytes.writeMultiByte(xmlString,'utf-8');
			var ft:FileReference=new FileReference();
			var fr:FileReference = new FileReference();
			fr.addEventListener(Event.CANCEL, onFileReferenceCancel_handler);
			fr.addEventListener(Event.COMPLETE, onFileSaveComplete_handler);
			fr.save(bytes, "export.kml");
			ft.save(bytes, "export.txt");
			}
		}
	}
