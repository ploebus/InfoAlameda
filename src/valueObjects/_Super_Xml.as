/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Xml.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;
import valueObjects.Item;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Xml extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Item.initRemoteClassAliasSingleChild();
        valueObjects.Variables.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _XmlEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_tract : String;
    private var _internal_count : int;
    private var _internal_layerId : String;
    private var _internal_boundary : String;
    private var _internal_field : String;
    private var _internal_item : ArrayCollection;
    model_internal var _internal_item_leaf:valueObjects.Item;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Xml()
    {
        _model = new _XmlEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tract", model_internal::setterListenerTract));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "layerId", model_internal::setterListenerLayerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "boundary", model_internal::setterListenerBoundary));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "field", model_internal::setterListenerField));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get tract() : String
    {
        return _internal_tract;
    }

    [Bindable(event="propertyChange")]
    public function get count() : int
    {
        return _internal_count;
    }

    [Bindable(event="propertyChange")]
    public function get layerId() : String
    {
        return _internal_layerId;
    }

    [Bindable(event="propertyChange")]
    public function get boundary() : String
    {
        return _internal_boundary;
    }

    [Bindable(event="propertyChange")]
    public function get field() : String
    {
        return _internal_field;
    }

    [Bindable(event="propertyChange")]
    public function get item() : ArrayCollection
    {
        return _internal_item;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set tract(value:String) : void
    {
        var oldValue:String = _internal_tract;
        if (oldValue !== value)
        {
            _internal_tract = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tract", oldValue, _internal_tract));
        }
    }

    public function set count(value:int) : void
    {
        var oldValue:int = _internal_count;
        if (oldValue !== value)
        {
            _internal_count = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "count", oldValue, _internal_count));
        }
    }

    public function set layerId(value:String) : void
    {
        var oldValue:String = _internal_layerId;
        if (oldValue !== value)
        {
            _internal_layerId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layerId", oldValue, _internal_layerId));
        }
    }

    public function set boundary(value:String) : void
    {
        var oldValue:String = _internal_boundary;
        if (oldValue !== value)
        {
            _internal_boundary = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boundary", oldValue, _internal_boundary));
        }
    }

    public function set field(value:String) : void
    {
        var oldValue:String = _internal_field;
        if (oldValue !== value)
        {
            _internal_field = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "field", oldValue, _internal_field));
        }
    }

    public function set item(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_item;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_item = value;
            }
            else if (value is Array)
            {
                _internal_item = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_item = null;
            }
            else
            {
                throw new Error("value of item must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "item", oldValue, _internal_item));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerTract(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTract();
    }

    model_internal function setterListenerLayerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLayerId();
    }

    model_internal function setterListenerBoundary(value:flash.events.Event):void
    {
        _model.invalidateDependentOnBoundary();
    }

    model_internal function setterListenerField(value:flash.events.Event):void
    {
        _model.invalidateDependentOnField();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.tractIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tractValidationFailureMessages);
        }
        if (!_model.layerIdIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_layerIdValidationFailureMessages);
        }
        if (!_model.boundaryIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_boundaryValidationFailureMessages);
        }
        if (!_model.fieldIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fieldValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _XmlEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _XmlEntityMetadata) : void
    {
        var oldValue : _XmlEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfTract : Array = null;
    model_internal var _doValidationLastValOfTract : String;

    model_internal function _doValidationForTract(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTract != null && model_internal::_doValidationLastValOfTract == value)
           return model_internal::_doValidationCacheOfTract ;

        _model.model_internal::_tractIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTractAvailable && _internal_tract == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tract is required"));
        }

        model_internal::_doValidationCacheOfTract = validationFailures;
        model_internal::_doValidationLastValOfTract = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLayerId : Array = null;
    model_internal var _doValidationLastValOfLayerId : String;

    model_internal function _doValidationForLayerId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLayerId != null && model_internal::_doValidationLastValOfLayerId == value)
           return model_internal::_doValidationCacheOfLayerId ;

        _model.model_internal::_layerIdIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLayerIdAvailable && _internal_layerId == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "layerId is required"));
        }

        model_internal::_doValidationCacheOfLayerId = validationFailures;
        model_internal::_doValidationLastValOfLayerId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfBoundary : Array = null;
    model_internal var _doValidationLastValOfBoundary : String;

    model_internal function _doValidationForBoundary(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfBoundary != null && model_internal::_doValidationLastValOfBoundary == value)
           return model_internal::_doValidationCacheOfBoundary ;

        _model.model_internal::_boundaryIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isBoundaryAvailable && _internal_boundary == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "boundary is required"));
        }

        model_internal::_doValidationCacheOfBoundary = validationFailures;
        model_internal::_doValidationLastValOfBoundary = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfField : Array = null;
    model_internal var _doValidationLastValOfField : String;

    model_internal function _doValidationForField(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfField != null && model_internal::_doValidationLastValOfField == value)
           return model_internal::_doValidationCacheOfField ;

        _model.model_internal::_fieldIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFieldAvailable && _internal_field == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "field is required"));
        }

        model_internal::_doValidationCacheOfField = validationFailures;
        model_internal::_doValidationLastValOfField = value;

        return validationFailures;
    }
    

}

}
