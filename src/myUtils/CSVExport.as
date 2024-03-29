package myUtils
{
	import mx.collections.ArrayCollection;
	import mx.collections.ArrayList;
	import mx.collections.CursorBookmark;
	import mx.collections.IList;
	import mx.collections.IViewCursor;
	import mx.collections.XMLListCollection;
	import mx.controls.DataGrid;
	import mx.controls.dataGridClasses.DataGridColumn;
	
	public class CSVExport
	{
		
		public static function exportCSV(dg:Object, csvSeparator:String=",", lineSeparator:String="\n"):String
		{
			var data:String = "";
			var columns:Array;
			if(dg.columns is ArrayList){
				columns = (dg.columns as ArrayList).source;
			}
			else{
				columns = dg.columns;
			}
		
			var columnCount:int = columns.length;
			var column:Object;
			var header:String = "";
			var headerGenerated:Boolean = false;
			var dataProvider:Object = dg.dataProvider;
			
			var rowCount:int = dataProvider.length;
			var dp:Object = null;
			
			
			var cursor:IViewCursor = dataProvider.createCursor ();
			var j:int = 0;
			
			//loop through rows
			while (!cursor.afterLast)
			{
				var obj:Object = null;
				obj = cursor.current;
				
				//loop through all columns for the row
				for(var k:int = 0; k < columnCount; k++)
				{
					column = columns[k];
					
					//Exclude column data which is invisible (hidden)
					if(!column.visible)
					{
						continue;
					}
					
					data += column.itemToLabel(obj);
					
					if(k < (columnCount -1))
					{
						data += csvSeparator;
						trace(data);
					}
					
					//generate header of CSV, only if it's not genereted yet
					if (!headerGenerated)
					{
						header += column.headerText;
						if (k < columnCount - 1)
						{
							header += csvSeparator;
						}
					}
					
					
				}
				
				headerGenerated = true;
				
				if (j < (rowCount - 1))
				{
					data += lineSeparator;
				}
				
				j++;
				cursor.moveNext ();
			}
			
			//set references to null:
			dataProvider = null;
			columns = null;
			column = null;
			
			return (header + "\r\n" + data);
		}	
	}
	
}