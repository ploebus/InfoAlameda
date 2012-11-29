/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Properties.as.
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

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Properties extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _PropertiesEntityMetadata;
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
    private var _internal_dec_col : Number = Number(0);
    private var _internal_sortable : String;
    private var _internal_name : String;
    private var _internal_longitude : Number = Number(0);
    private var _internal_latitude : Number = Number(0);
    private var _internal_int_col : int;
    private var _internal_geometry : String;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Properties()
    {
        _model = new _PropertiesEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "sortable", model_internal::setterListenerSortable));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "name", model_internal::setterListenerName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "geometry", model_internal::setterListenerGeometry));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get dec_col() : Number
    {
        return _internal_dec_col;
    }

    [Bindable(event="propertyChange")]
    public function get sortable() : String
    {
        return _internal_sortable;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get longitude() : Number
    {
        return _internal_longitude;
    }

    [Bindable(event="propertyChange")]
    public function get latitude() : Number
    {
        return _internal_latitude;
    }

    [Bindable(event="propertyChange")]
    public function get int_col() : int
    {
        return _internal_int_col;
    }

    [Bindable(event="propertyChange")]
    public function get geometry() : String
    {
        return _internal_geometry;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set dec_col(value:Number) : void
    {
        var oldValue:Number = _internal_dec_col;
        if (isNaN(_internal_dec_col) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_dec_col = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dec_col", oldValue, _internal_dec_col));
        }
    }

    public function set sortable(value:String) : void
    {
        var oldValue:String = _internal_sortable;
        if (oldValue !== value)
        {
            _internal_sortable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sortable", oldValue, _internal_sortable));
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set longitude(value:Number) : void
    {
        var oldValue:Number = _internal_longitude;
        if (isNaN(_internal_longitude) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_longitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitude", oldValue, _internal_longitude));
        }
    }

    public function set latitude(value:Number) : void
    {
        var oldValue:Number = _internal_latitude;
        if (isNaN(_internal_latitude) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_latitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latitude", oldValue, _internal_latitude));
        }
    }

    public function set int_col(value:int) : void
    {
        var oldValue:int = _internal_int_col;
        if (oldValue !== value)
        {
            _internal_int_col = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "int_col", oldValue, _internal_int_col));
        }
    }

    public function set geometry(value:String) : void
    {
        var oldValue:String = _internal_geometry;
        if (oldValue !== value)
        {
            _internal_geometry = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "geometry", oldValue, _internal_geometry));
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

    model_internal function setterListenerSortable(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSortable();
    }

    model_internal function setterListenerName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnName();
    }

    model_internal function setterListenerGeometry(value:flash.events.Event):void
    {
        _model.invalidateDependentOnGeometry();
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
        if (!_model.sortableIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sortableValidationFailureMessages);
        }
        if (!_model.nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nameValidationFailureMessages);
        }
        if (!_model.geometryIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_geometryValidationFailureMessages);
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
    public function get _model() : _PropertiesEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PropertiesEntityMetadata) : void
    {
        var oldValue : _PropertiesEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfSortable : Array = null;
    model_internal var _doValidationLastValOfSortable : String;

    model_internal function _doValidationForSortable(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSortable != null && model_internal::_doValidationLastValOfSortable == value)
           return model_internal::_doValidationCacheOfSortable ;

        _model.model_internal::_sortableIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSortableAvailable && _internal_sortable == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "sortable is required"));
        }

        model_internal::_doValidationCacheOfSortable = validationFailures;
        model_internal::_doValidationLastValOfSortable = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfName : Array = null;
    model_internal var _doValidationLastValOfName : String;

    model_internal function _doValidationForName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfName != null && model_internal::_doValidationLastValOfName == value)
           return model_internal::_doValidationCacheOfName ;

        _model.model_internal::_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNameAvailable && _internal_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "name is required"));
        }

        model_internal::_doValidationCacheOfName = validationFailures;
        model_internal::_doValidationLastValOfName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfGeometry : Array = null;
    model_internal var _doValidationLastValOfGeometry : String;

    model_internal function _doValidationForGeometry(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfGeometry != null && model_internal::_doValidationLastValOfGeometry == value)
           return model_internal::_doValidationCacheOfGeometry ;

        _model.model_internal::_geometryIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isGeometryAvailable && _internal_geometry == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "geometry is required"));
        }

        model_internal::_doValidationCacheOfGeometry = validationFailures;
        model_internal::_doValidationLastValOfGeometry = value;

        return validationFailures;
    }
    

}

}
