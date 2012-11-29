/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - Datalookup.as.
 */
package services.datalookup
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;
import valueObjects.DataObject;
import valueObjects.IdentifyVariables;
import valueObjects.Item;
import valueObjects.Schools;
import valueObjects.Xml;
import valueObjects.Xml1;
import valueObjects.Xml2;
import valueObjects.Xml5;
import valueObjects.Xml7;
import valueObjects.Xml8;

import com.adobe.serializers.xml.XMLSerializationFilter;

[ExcludeClass]
internal class _Super_Datalookup extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:XMLSerializationFilter = new XMLSerializationFilter();

    // Constructor
    public function _Super_Datalookup()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService();
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "comment");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/comment";
         operation.method = "POST";
         argsArray = new Array("comment","email","category");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.Xml1;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getSchools");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/School";
         operation.method = "GET";
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/::item";
         operation.resultElementType = valueObjects.Item;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getAttendence");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/attendence";
         operation.method = "GET";
         argsArray = new Array("schoolName");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/::item";
         operation.resultElementType = valueObjects.Xml;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "category");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/Categories";
         operation.method = "GET";
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "subCategory");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/Subcategories";
         operation.method = "GET";
         argsArray = new Array("category");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "variable");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/Variables";
         operation.method = "GET";
         argsArray = new Array("subCategory","boundary");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "variableDetail");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/variableDetails";
         operation.method = "GET";
         argsArray = new Array("variable","variableCategory");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml7;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "secondVariable");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/secondVariable";
         operation.method = "GET";
         argsArray = new Array("variable","boundary");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml7;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getYears");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/years";
         operation.method = "GET";
         argsArray = new Array("variableCategory","variable","boundary");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getSummary");
         operation.url = "http://rest.infoalamedacounty.org/index.php/api/rest/summary";
         operation.method = "GET";
         argsArray = new Array("category","boundary");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml2;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getBoundaries");
         operation.url = "http://rest.infoAlamedaCounty.org/index.php/api/rest/Boundaries";
         operation.method = "GET";
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml5;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getDataObject");
         operation.url = "http://rest.infoalamedacounty.org/index.php/api/rest/data_object";
         operation.method = "GET";
         argsArray = new Array("field","boundary");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/::item";
         operation.resultElementType = valueObjects.DataObject;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getChartData");
         operation.url = "http://rest.infoalamedacounty.org/index.php/api/rest/chartData";
         operation.method = "GET";
         argsArray = new Array("category","boundary","year");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml8;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getIdentifyVariables");
         operation.url = "http://rest.infoalamedacounty.org/index.php/api/rest/identifytool";
         operation.method = "GET";
         argsArray = new Array("boundaryLabel");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.IdentifyVariables;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getIdVariables");
         operation.url = "http://rest.infoalamedacounty.org/index.php/api/rest/IdVariables";
         operation.method = "GET";
         argsArray = new Array("boundaryLabel");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Xml8;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getSchoolByTract");
         operation.url = "http://rest.infoalamedacounty.org/index.php/api/rest/SchoolByTract";
         operation.method = "GET";
         argsArray = new Array("tract");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/::item";
         operation.resultElementType = valueObjects.Schools;
         operations.push(operation);

         _serviceControl.operationList = operations;  


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'comment' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function comment(comment:String, email:String, category:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("comment");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(comment,email,category) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getSchools' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSchools() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSchools");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAttendence' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAttendence(schoolName:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAttendence");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(schoolName) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'category' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function category() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("category");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'subCategory' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function subCategory(category:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("subCategory");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(category) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'variable' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function variable(subCategory:String, boundary:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("variable");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(subCategory,boundary) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'variableDetail' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function variableDetail(variable:String, variableCategory:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("variableDetail");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(variable,variableCategory) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'secondVariable' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function secondVariable(variable:String, boundary:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("secondVariable");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(variable,boundary) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getYears' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getYears(variableCategory:String, variable:String, boundary:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getYears");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(variableCategory,variable,boundary) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getSummary' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSummary(category:String, boundary:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSummary");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(category,boundary) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getBoundaries' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getBoundaries() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getBoundaries");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getDataObject' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getDataObject(field:String, boundary:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getDataObject");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(field,boundary) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getChartData' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getChartData(category:String, boundary:String, year:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getChartData");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(category,boundary,year) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getIdentifyVariables' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getIdentifyVariables(boundaryLabel:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getIdentifyVariables");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(boundaryLabel) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getIdVariables' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getIdVariables(boundaryLabel:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getIdVariables");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(boundaryLabel) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getSchoolByTract' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSchoolByTract(tract:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSchoolByTract");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(tract) ;
        return _internal_token;
    }
     
}

}
