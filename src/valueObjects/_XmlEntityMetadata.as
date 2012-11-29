
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import valueObjects.Item;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _XmlEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("tract", "count", "layerId", "boundary", "field", "item");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("tract", "count", "layerId", "boundary", "field");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("tract", "count", "layerId", "boundary", "field", "item");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("tract", "count", "layerId", "boundary", "field", "item");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("tract", "count", "layerId", "boundary", "field", "item");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("item");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Xml";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _tractIsValid:Boolean;
    model_internal var _tractValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _tractIsValidCacheInitialized:Boolean = false;
    model_internal var _tractValidationFailureMessages:Array;
    
    model_internal var _layerIdIsValid:Boolean;
    model_internal var _layerIdValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _layerIdIsValidCacheInitialized:Boolean = false;
    model_internal var _layerIdValidationFailureMessages:Array;
    
    model_internal var _boundaryIsValid:Boolean;
    model_internal var _boundaryValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _boundaryIsValidCacheInitialized:Boolean = false;
    model_internal var _boundaryValidationFailureMessages:Array;
    
    model_internal var _fieldIsValid:Boolean;
    model_internal var _fieldValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fieldIsValidCacheInitialized:Boolean = false;
    model_internal var _fieldValidationFailureMessages:Array;

    model_internal var _instance:_Super_Xml;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _XmlEntityMetadata(value : _Super_Xml)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["tract"] = new Array();
            model_internal::dependentsOnMap["count"] = new Array();
            model_internal::dependentsOnMap["layerId"] = new Array();
            model_internal::dependentsOnMap["boundary"] = new Array();
            model_internal::dependentsOnMap["field"] = new Array();
            model_internal::dependentsOnMap["item"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["item"] = "valueObjects.Item";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["tract"] = "String";
        model_internal::propertyTypeMap["count"] = "int";
        model_internal::propertyTypeMap["layerId"] = "String";
        model_internal::propertyTypeMap["boundary"] = "String";
        model_internal::propertyTypeMap["field"] = "String";
        model_internal::propertyTypeMap["item"] = "ArrayCollection";

        model_internal::_instance = value;
        model_internal::_tractValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTract);
        model_internal::_tractValidator.required = true;
        model_internal::_tractValidator.requiredFieldError = "tract is required";
        //model_internal::_tractValidator.source = model_internal::_instance;
        //model_internal::_tractValidator.property = "tract";
        model_internal::_layerIdValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLayerId);
        model_internal::_layerIdValidator.required = true;
        model_internal::_layerIdValidator.requiredFieldError = "layerId is required";
        //model_internal::_layerIdValidator.source = model_internal::_instance;
        //model_internal::_layerIdValidator.property = "layerId";
        model_internal::_boundaryValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBoundary);
        model_internal::_boundaryValidator.required = true;
        model_internal::_boundaryValidator.requiredFieldError = "boundary is required";
        //model_internal::_boundaryValidator.source = model_internal::_instance;
        //model_internal::_boundaryValidator.property = "boundary";
        model_internal::_fieldValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForField);
        model_internal::_fieldValidator.required = true;
        model_internal::_fieldValidator.requiredFieldError = "field is required";
        //model_internal::_fieldValidator.source = model_internal::_instance;
        //model_internal::_fieldValidator.property = "field";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity Xml");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity Xml");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Xml");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Xml");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Xml");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Xml");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isTractAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCountAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLayerIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBoundaryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFieldAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isItemAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnTract():void
    {
        if (model_internal::_tractIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTract = null;
            model_internal::calculateTractIsValid();
        }
    }
    public function invalidateDependentOnLayerId():void
    {
        if (model_internal::_layerIdIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLayerId = null;
            model_internal::calculateLayerIdIsValid();
        }
    }
    public function invalidateDependentOnBoundary():void
    {
        if (model_internal::_boundaryIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBoundary = null;
            model_internal::calculateBoundaryIsValid();
        }
    }
    public function invalidateDependentOnField():void
    {
        if (model_internal::_fieldIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfField = null;
            model_internal::calculateFieldIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get tractStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get tractValidator() : StyleValidator
    {
        return model_internal::_tractValidator;
    }

    model_internal function set _tractIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_tractIsValid;         
        if (oldValue !== value)
        {
            model_internal::_tractIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tractIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get tractIsValid():Boolean
    {
        if (!model_internal::_tractIsValidCacheInitialized)
        {
            model_internal::calculateTractIsValid();
        }

        return model_internal::_tractIsValid;
    }

    model_internal function calculateTractIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_tractValidator.validate(model_internal::_instance.tract)
        model_internal::_tractIsValid_der = (valRes.results == null);
        model_internal::_tractIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::tractValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::tractValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get tractValidationFailureMessages():Array
    {
        if (model_internal::_tractValidationFailureMessages == null)
            model_internal::calculateTractIsValid();

        return _tractValidationFailureMessages;
    }

    model_internal function set tractValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_tractValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_tractValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tractValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get countStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get layerIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get layerIdValidator() : StyleValidator
    {
        return model_internal::_layerIdValidator;
    }

    model_internal function set _layerIdIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_layerIdIsValid;         
        if (oldValue !== value)
        {
            model_internal::_layerIdIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layerIdIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get layerIdIsValid():Boolean
    {
        if (!model_internal::_layerIdIsValidCacheInitialized)
        {
            model_internal::calculateLayerIdIsValid();
        }

        return model_internal::_layerIdIsValid;
    }

    model_internal function calculateLayerIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_layerIdValidator.validate(model_internal::_instance.layerId)
        model_internal::_layerIdIsValid_der = (valRes.results == null);
        model_internal::_layerIdIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::layerIdValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::layerIdValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get layerIdValidationFailureMessages():Array
    {
        if (model_internal::_layerIdValidationFailureMessages == null)
            model_internal::calculateLayerIdIsValid();

        return _layerIdValidationFailureMessages;
    }

    model_internal function set layerIdValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_layerIdValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_layerIdValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layerIdValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get boundaryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get boundaryValidator() : StyleValidator
    {
        return model_internal::_boundaryValidator;
    }

    model_internal function set _boundaryIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_boundaryIsValid;         
        if (oldValue !== value)
        {
            model_internal::_boundaryIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boundaryIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get boundaryIsValid():Boolean
    {
        if (!model_internal::_boundaryIsValidCacheInitialized)
        {
            model_internal::calculateBoundaryIsValid();
        }

        return model_internal::_boundaryIsValid;
    }

    model_internal function calculateBoundaryIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_boundaryValidator.validate(model_internal::_instance.boundary)
        model_internal::_boundaryIsValid_der = (valRes.results == null);
        model_internal::_boundaryIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::boundaryValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::boundaryValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get boundaryValidationFailureMessages():Array
    {
        if (model_internal::_boundaryValidationFailureMessages == null)
            model_internal::calculateBoundaryIsValid();

        return _boundaryValidationFailureMessages;
    }

    model_internal function set boundaryValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_boundaryValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_boundaryValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boundaryValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get fieldStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get fieldValidator() : StyleValidator
    {
        return model_internal::_fieldValidator;
    }

    model_internal function set _fieldIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_fieldIsValid;         
        if (oldValue !== value)
        {
            model_internal::_fieldIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fieldIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get fieldIsValid():Boolean
    {
        if (!model_internal::_fieldIsValidCacheInitialized)
        {
            model_internal::calculateFieldIsValid();
        }

        return model_internal::_fieldIsValid;
    }

    model_internal function calculateFieldIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_fieldValidator.validate(model_internal::_instance.field)
        model_internal::_fieldIsValid_der = (valRes.results == null);
        model_internal::_fieldIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::fieldValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::fieldValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get fieldValidationFailureMessages():Array
    {
        if (model_internal::_fieldValidationFailureMessages == null)
            model_internal::calculateFieldIsValid();

        return _fieldValidationFailureMessages;
    }

    model_internal function set fieldValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_fieldValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_fieldValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fieldValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get itemStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("tract"):
            {
                return tractValidationFailureMessages;
            }
            case("layerId"):
            {
                return layerIdValidationFailureMessages;
            }
            case("boundary"):
            {
                return boundaryValidationFailureMessages;
            }
            case("field"):
            {
                return fieldValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
