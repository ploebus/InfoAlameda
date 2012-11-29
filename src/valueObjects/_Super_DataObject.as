/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - DataObject.as.
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
public class _Super_DataObject extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _DataObjectEntityMetadata;
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
    private var _internal_ID : String;
    private var _internal_layerid : String;
    private var _internal_layer : String;
    private var _internal_category : String;
    private var _internal_subcategory : String;
    private var _internal_field : String;
    private var _internal_alias : String;
    private var _internal_boundary : String;
    private var _internal_coverage : String;
    private var _internal_source : String;
    private var _internal_year : String;
    private var _internal_priority : String;
    private var _internal_status : String;
    private var _internal_boundaryLabel : String;
    private var _internal_dataType : String;
    private var _internal_security : String;
    private var _internal_disclaimer : String;
    private var _internal_variablecategory : String;
    private var _internal_exclusion : String;
    private var _internal_usertip : String;
    private var _internal_summary : String;
    private var _internal_confidenceInterval : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_DataObject()
    {
        _model = new _DataObjectEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ID", model_internal::setterListenerID));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "layerid", model_internal::setterListenerLayerid));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "layer", model_internal::setterListenerLayer));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "category", model_internal::setterListenerCategory));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "subcategory", model_internal::setterListenerSubcategory));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "field", model_internal::setterListenerField));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "alias", model_internal::setterListenerAlias));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "boundary", model_internal::setterListenerBoundary));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "coverage", model_internal::setterListenerCoverage));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "source", model_internal::setterListenerSource));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "year", model_internal::setterListenerYear));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "priority", model_internal::setterListenerPriority));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "status", model_internal::setterListenerStatus));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "boundaryLabel", model_internal::setterListenerBoundaryLabel));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "dataType", model_internal::setterListenerDataType));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "security", model_internal::setterListenerSecurity));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "disclaimer", model_internal::setterListenerDisclaimer));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "variablecategory", model_internal::setterListenerVariablecategory));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "exclusion", model_internal::setterListenerExclusion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "usertip", model_internal::setterListenerUsertip));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "summary", model_internal::setterListenerSummary));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "confidenceInterval", model_internal::setterListenerConfidenceInterval));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get ID() : String
    {
        return _internal_ID;
    }

    [Bindable(event="propertyChange")]
    public function get layerid() : String
    {
        return _internal_layerid;
    }

    [Bindable(event="propertyChange")]
    public function get layer() : String
    {
        return _internal_layer;
    }

    [Bindable(event="propertyChange")]
    public function get category() : String
    {
        return _internal_category;
    }

    [Bindable(event="propertyChange")]
    public function get subcategory() : String
    {
        return _internal_subcategory;
    }

    [Bindable(event="propertyChange")]
    public function get field() : String
    {
        return _internal_field;
    }

    [Bindable(event="propertyChange")]
    public function get alias() : String
    {
        return _internal_alias;
    }

    [Bindable(event="propertyChange")]
    public function get boundary() : String
    {
        return _internal_boundary;
    }

    [Bindable(event="propertyChange")]
    public function get coverage() : String
    {
        return _internal_coverage;
    }

    [Bindable(event="propertyChange")]
    public function get source() : String
    {
        return _internal_source;
    }

    [Bindable(event="propertyChange")]
    public function get year() : String
    {
        return _internal_year;
    }

    [Bindable(event="propertyChange")]
    public function get priority() : String
    {
        return _internal_priority;
    }

    [Bindable(event="propertyChange")]
    public function get status() : String
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get boundaryLabel() : String
    {
        return _internal_boundaryLabel;
    }

    [Bindable(event="propertyChange")]
    public function get dataType() : String
    {
        return _internal_dataType;
    }

    [Bindable(event="propertyChange")]
    public function get security() : String
    {
        return _internal_security;
    }

    [Bindable(event="propertyChange")]
    public function get disclaimer() : String
    {
        return _internal_disclaimer;
    }

    [Bindable(event="propertyChange")]
    public function get variablecategory() : String
    {
        return _internal_variablecategory;
    }

    [Bindable(event="propertyChange")]
    public function get exclusion() : String
    {
        return _internal_exclusion;
    }

    [Bindable(event="propertyChange")]
    public function get usertip() : String
    {
        return _internal_usertip;
    }

    [Bindable(event="propertyChange")]
    public function get summary() : String
    {
        return _internal_summary;
    }

    [Bindable(event="propertyChange")]
    public function get confidenceInterval() : String
    {
        return _internal_confidenceInterval;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set ID(value:String) : void
    {
        var oldValue:String = _internal_ID;
        if (oldValue !== value)
        {
            _internal_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID", oldValue, _internal_ID));
        }
    }

    public function set layerid(value:String) : void
    {
        var oldValue:String = _internal_layerid;
        if (oldValue !== value)
        {
            _internal_layerid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layerid", oldValue, _internal_layerid));
        }
    }

    public function set layer(value:String) : void
    {
        var oldValue:String = _internal_layer;
        if (oldValue !== value)
        {
            _internal_layer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layer", oldValue, _internal_layer));
        }
    }

    public function set category(value:String) : void
    {
        var oldValue:String = _internal_category;
        if (oldValue !== value)
        {
            _internal_category = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "category", oldValue, _internal_category));
        }
    }

    public function set subcategory(value:String) : void
    {
        var oldValue:String = _internal_subcategory;
        if (oldValue !== value)
        {
            _internal_subcategory = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subcategory", oldValue, _internal_subcategory));
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

    public function set alias(value:String) : void
    {
        var oldValue:String = _internal_alias;
        if (oldValue !== value)
        {
            _internal_alias = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alias", oldValue, _internal_alias));
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

    public function set coverage(value:String) : void
    {
        var oldValue:String = _internal_coverage;
        if (oldValue !== value)
        {
            _internal_coverage = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "coverage", oldValue, _internal_coverage));
        }
    }

    public function set source(value:String) : void
    {
        var oldValue:String = _internal_source;
        if (oldValue !== value)
        {
            _internal_source = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "source", oldValue, _internal_source));
        }
    }

    public function set year(value:String) : void
    {
        var oldValue:String = _internal_year;
        if (oldValue !== value)
        {
            _internal_year = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "year", oldValue, _internal_year));
        }
    }

    public function set priority(value:String) : void
    {
        var oldValue:String = _internal_priority;
        if (oldValue !== value)
        {
            _internal_priority = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "priority", oldValue, _internal_priority));
        }
    }

    public function set status(value:String) : void
    {
        var oldValue:String = _internal_status;
        if (oldValue !== value)
        {
            _internal_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "status", oldValue, _internal_status));
        }
    }

    public function set boundaryLabel(value:String) : void
    {
        var oldValue:String = _internal_boundaryLabel;
        if (oldValue !== value)
        {
            _internal_boundaryLabel = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boundaryLabel", oldValue, _internal_boundaryLabel));
        }
    }

    public function set dataType(value:String) : void
    {
        var oldValue:String = _internal_dataType;
        if (oldValue !== value)
        {
            _internal_dataType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataType", oldValue, _internal_dataType));
        }
    }

    public function set security(value:String) : void
    {
        var oldValue:String = _internal_security;
        if (oldValue !== value)
        {
            _internal_security = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "security", oldValue, _internal_security));
        }
    }

    public function set disclaimer(value:String) : void
    {
        var oldValue:String = _internal_disclaimer;
        if (oldValue !== value)
        {
            _internal_disclaimer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "disclaimer", oldValue, _internal_disclaimer));
        }
    }

    public function set variablecategory(value:String) : void
    {
        var oldValue:String = _internal_variablecategory;
        if (oldValue !== value)
        {
            _internal_variablecategory = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "variablecategory", oldValue, _internal_variablecategory));
        }
    }

    public function set exclusion(value:String) : void
    {
        var oldValue:String = _internal_exclusion;
        if (oldValue !== value)
        {
            _internal_exclusion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exclusion", oldValue, _internal_exclusion));
        }
    }

    public function set usertip(value:String) : void
    {
        var oldValue:String = _internal_usertip;
        if (oldValue !== value)
        {
            _internal_usertip = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usertip", oldValue, _internal_usertip));
        }
    }

    public function set summary(value:String) : void
    {
        var oldValue:String = _internal_summary;
        if (oldValue !== value)
        {
            _internal_summary = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "summary", oldValue, _internal_summary));
        }
    }

    public function set confidenceInterval(value:String) : void
    {
        var oldValue:String = _internal_confidenceInterval;
        if (oldValue !== value)
        {
            _internal_confidenceInterval = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "confidenceInterval", oldValue, _internal_confidenceInterval));
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

    model_internal function setterListenerID(value:flash.events.Event):void
    {
        _model.invalidateDependentOnID();
    }

    model_internal function setterListenerLayerid(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLayerid();
    }

    model_internal function setterListenerLayer(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLayer();
    }

    model_internal function setterListenerCategory(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCategory();
    }

    model_internal function setterListenerSubcategory(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSubcategory();
    }

    model_internal function setterListenerField(value:flash.events.Event):void
    {
        _model.invalidateDependentOnField();
    }

    model_internal function setterListenerAlias(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAlias();
    }

    model_internal function setterListenerBoundary(value:flash.events.Event):void
    {
        _model.invalidateDependentOnBoundary();
    }

    model_internal function setterListenerCoverage(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCoverage();
    }

    model_internal function setterListenerSource(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSource();
    }

    model_internal function setterListenerYear(value:flash.events.Event):void
    {
        _model.invalidateDependentOnYear();
    }

    model_internal function setterListenerPriority(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPriority();
    }

    model_internal function setterListenerStatus(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStatus();
    }

    model_internal function setterListenerBoundaryLabel(value:flash.events.Event):void
    {
        _model.invalidateDependentOnBoundaryLabel();
    }

    model_internal function setterListenerDataType(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDataType();
    }

    model_internal function setterListenerSecurity(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSecurity();
    }

    model_internal function setterListenerDisclaimer(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDisclaimer();
    }

    model_internal function setterListenerVariablecategory(value:flash.events.Event):void
    {
        _model.invalidateDependentOnVariablecategory();
    }

    model_internal function setterListenerExclusion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnExclusion();
    }

    model_internal function setterListenerUsertip(value:flash.events.Event):void
    {
        _model.invalidateDependentOnUsertip();
    }

    model_internal function setterListenerSummary(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSummary();
    }

    model_internal function setterListenerConfidenceInterval(value:flash.events.Event):void
    {
        _model.invalidateDependentOnConfidenceInterval();
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
        if (!_model.IDIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_IDValidationFailureMessages);
        }
        if (!_model.layeridIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_layeridValidationFailureMessages);
        }
        if (!_model.layerIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_layerValidationFailureMessages);
        }
        if (!_model.categoryIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_categoryValidationFailureMessages);
        }
        if (!_model.subcategoryIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_subcategoryValidationFailureMessages);
        }
        if (!_model.fieldIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_fieldValidationFailureMessages);
        }
        if (!_model.aliasIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_aliasValidationFailureMessages);
        }
        if (!_model.boundaryIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_boundaryValidationFailureMessages);
        }
        if (!_model.coverageIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_coverageValidationFailureMessages);
        }
        if (!_model.sourceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sourceValidationFailureMessages);
        }
        if (!_model.yearIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_yearValidationFailureMessages);
        }
        if (!_model.priorityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_priorityValidationFailureMessages);
        }
        if (!_model.statusIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_statusValidationFailureMessages);
        }
        if (!_model.boundaryLabelIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_boundaryLabelValidationFailureMessages);
        }
        if (!_model.dataTypeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_dataTypeValidationFailureMessages);
        }
        if (!_model.securityIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_securityValidationFailureMessages);
        }
        if (!_model.disclaimerIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_disclaimerValidationFailureMessages);
        }
        if (!_model.variablecategoryIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_variablecategoryValidationFailureMessages);
        }
        if (!_model.exclusionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_exclusionValidationFailureMessages);
        }
        if (!_model.usertipIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_usertipValidationFailureMessages);
        }
        if (!_model.summaryIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_summaryValidationFailureMessages);
        }
        if (!_model.confidenceIntervalIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_confidenceIntervalValidationFailureMessages);
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
    public function get _model() : _DataObjectEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _DataObjectEntityMetadata) : void
    {
        var oldValue : _DataObjectEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfID : Array = null;
    model_internal var _doValidationLastValOfID : String;

    model_internal function _doValidationForID(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfID != null && model_internal::_doValidationLastValOfID == value)
           return model_internal::_doValidationCacheOfID ;

        _model.model_internal::_IDIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIDAvailable && _internal_ID == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ID is required"));
        }

        model_internal::_doValidationCacheOfID = validationFailures;
        model_internal::_doValidationLastValOfID = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLayerid : Array = null;
    model_internal var _doValidationLastValOfLayerid : String;

    model_internal function _doValidationForLayerid(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLayerid != null && model_internal::_doValidationLastValOfLayerid == value)
           return model_internal::_doValidationCacheOfLayerid ;

        _model.model_internal::_layeridIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLayeridAvailable && _internal_layerid == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "layerid is required"));
        }

        model_internal::_doValidationCacheOfLayerid = validationFailures;
        model_internal::_doValidationLastValOfLayerid = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLayer : Array = null;
    model_internal var _doValidationLastValOfLayer : String;

    model_internal function _doValidationForLayer(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLayer != null && model_internal::_doValidationLastValOfLayer == value)
           return model_internal::_doValidationCacheOfLayer ;

        _model.model_internal::_layerIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLayerAvailable && _internal_layer == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "layer is required"));
        }

        model_internal::_doValidationCacheOfLayer = validationFailures;
        model_internal::_doValidationLastValOfLayer = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCategory : Array = null;
    model_internal var _doValidationLastValOfCategory : String;

    model_internal function _doValidationForCategory(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCategory != null && model_internal::_doValidationLastValOfCategory == value)
           return model_internal::_doValidationCacheOfCategory ;

        _model.model_internal::_categoryIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCategoryAvailable && _internal_category == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "category is required"));
        }

        model_internal::_doValidationCacheOfCategory = validationFailures;
        model_internal::_doValidationLastValOfCategory = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSubcategory : Array = null;
    model_internal var _doValidationLastValOfSubcategory : String;

    model_internal function _doValidationForSubcategory(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSubcategory != null && model_internal::_doValidationLastValOfSubcategory == value)
           return model_internal::_doValidationCacheOfSubcategory ;

        _model.model_internal::_subcategoryIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSubcategoryAvailable && _internal_subcategory == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "subcategory is required"));
        }

        model_internal::_doValidationCacheOfSubcategory = validationFailures;
        model_internal::_doValidationLastValOfSubcategory = value;

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
    
    model_internal var _doValidationCacheOfAlias : Array = null;
    model_internal var _doValidationLastValOfAlias : String;

    model_internal function _doValidationForAlias(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAlias != null && model_internal::_doValidationLastValOfAlias == value)
           return model_internal::_doValidationCacheOfAlias ;

        _model.model_internal::_aliasIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAliasAvailable && _internal_alias == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "alias is required"));
        }

        model_internal::_doValidationCacheOfAlias = validationFailures;
        model_internal::_doValidationLastValOfAlias = value;

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
    
    model_internal var _doValidationCacheOfCoverage : Array = null;
    model_internal var _doValidationLastValOfCoverage : String;

    model_internal function _doValidationForCoverage(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCoverage != null && model_internal::_doValidationLastValOfCoverage == value)
           return model_internal::_doValidationCacheOfCoverage ;

        _model.model_internal::_coverageIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCoverageAvailable && _internal_coverage == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "coverage is required"));
        }

        model_internal::_doValidationCacheOfCoverage = validationFailures;
        model_internal::_doValidationLastValOfCoverage = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSource : Array = null;
    model_internal var _doValidationLastValOfSource : String;

    model_internal function _doValidationForSource(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSource != null && model_internal::_doValidationLastValOfSource == value)
           return model_internal::_doValidationCacheOfSource ;

        _model.model_internal::_sourceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSourceAvailable && _internal_source == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "source is required"));
        }

        model_internal::_doValidationCacheOfSource = validationFailures;
        model_internal::_doValidationLastValOfSource = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfYear : Array = null;
    model_internal var _doValidationLastValOfYear : String;

    model_internal function _doValidationForYear(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfYear != null && model_internal::_doValidationLastValOfYear == value)
           return model_internal::_doValidationCacheOfYear ;

        _model.model_internal::_yearIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isYearAvailable && _internal_year == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "year is required"));
        }

        model_internal::_doValidationCacheOfYear = validationFailures;
        model_internal::_doValidationLastValOfYear = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPriority : Array = null;
    model_internal var _doValidationLastValOfPriority : String;

    model_internal function _doValidationForPriority(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPriority != null && model_internal::_doValidationLastValOfPriority == value)
           return model_internal::_doValidationCacheOfPriority ;

        _model.model_internal::_priorityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPriorityAvailable && _internal_priority == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "priority is required"));
        }

        model_internal::_doValidationCacheOfPriority = validationFailures;
        model_internal::_doValidationLastValOfPriority = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfStatus : Array = null;
    model_internal var _doValidationLastValOfStatus : String;

    model_internal function _doValidationForStatus(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfStatus != null && model_internal::_doValidationLastValOfStatus == value)
           return model_internal::_doValidationCacheOfStatus ;

        _model.model_internal::_statusIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStatusAvailable && _internal_status == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "status is required"));
        }

        model_internal::_doValidationCacheOfStatus = validationFailures;
        model_internal::_doValidationLastValOfStatus = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfBoundaryLabel : Array = null;
    model_internal var _doValidationLastValOfBoundaryLabel : String;

    model_internal function _doValidationForBoundaryLabel(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfBoundaryLabel != null && model_internal::_doValidationLastValOfBoundaryLabel == value)
           return model_internal::_doValidationCacheOfBoundaryLabel ;

        _model.model_internal::_boundaryLabelIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isBoundaryLabelAvailable && _internal_boundaryLabel == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "boundaryLabel is required"));
        }

        model_internal::_doValidationCacheOfBoundaryLabel = validationFailures;
        model_internal::_doValidationLastValOfBoundaryLabel = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDataType : Array = null;
    model_internal var _doValidationLastValOfDataType : String;

    model_internal function _doValidationForDataType(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDataType != null && model_internal::_doValidationLastValOfDataType == value)
           return model_internal::_doValidationCacheOfDataType ;

        _model.model_internal::_dataTypeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDataTypeAvailable && _internal_dataType == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "dataType is required"));
        }

        model_internal::_doValidationCacheOfDataType = validationFailures;
        model_internal::_doValidationLastValOfDataType = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSecurity : Array = null;
    model_internal var _doValidationLastValOfSecurity : String;

    model_internal function _doValidationForSecurity(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSecurity != null && model_internal::_doValidationLastValOfSecurity == value)
           return model_internal::_doValidationCacheOfSecurity ;

        _model.model_internal::_securityIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSecurityAvailable && _internal_security == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "security is required"));
        }

        model_internal::_doValidationCacheOfSecurity = validationFailures;
        model_internal::_doValidationLastValOfSecurity = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDisclaimer : Array = null;
    model_internal var _doValidationLastValOfDisclaimer : String;

    model_internal function _doValidationForDisclaimer(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDisclaimer != null && model_internal::_doValidationLastValOfDisclaimer == value)
           return model_internal::_doValidationCacheOfDisclaimer ;

        _model.model_internal::_disclaimerIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDisclaimerAvailable && _internal_disclaimer == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "disclaimer is required"));
        }

        model_internal::_doValidationCacheOfDisclaimer = validationFailures;
        model_internal::_doValidationLastValOfDisclaimer = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfVariablecategory : Array = null;
    model_internal var _doValidationLastValOfVariablecategory : String;

    model_internal function _doValidationForVariablecategory(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfVariablecategory != null && model_internal::_doValidationLastValOfVariablecategory == value)
           return model_internal::_doValidationCacheOfVariablecategory ;

        _model.model_internal::_variablecategoryIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isVariablecategoryAvailable && _internal_variablecategory == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "variablecategory is required"));
        }

        model_internal::_doValidationCacheOfVariablecategory = validationFailures;
        model_internal::_doValidationLastValOfVariablecategory = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfExclusion : Array = null;
    model_internal var _doValidationLastValOfExclusion : String;

    model_internal function _doValidationForExclusion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfExclusion != null && model_internal::_doValidationLastValOfExclusion == value)
           return model_internal::_doValidationCacheOfExclusion ;

        _model.model_internal::_exclusionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isExclusionAvailable && _internal_exclusion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "exclusion is required"));
        }

        model_internal::_doValidationCacheOfExclusion = validationFailures;
        model_internal::_doValidationLastValOfExclusion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfUsertip : Array = null;
    model_internal var _doValidationLastValOfUsertip : String;

    model_internal function _doValidationForUsertip(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfUsertip != null && model_internal::_doValidationLastValOfUsertip == value)
           return model_internal::_doValidationCacheOfUsertip ;

        _model.model_internal::_usertipIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isUsertipAvailable && _internal_usertip == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "usertip is required"));
        }

        model_internal::_doValidationCacheOfUsertip = validationFailures;
        model_internal::_doValidationLastValOfUsertip = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSummary : Array = null;
    model_internal var _doValidationLastValOfSummary : String;

    model_internal function _doValidationForSummary(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSummary != null && model_internal::_doValidationLastValOfSummary == value)
           return model_internal::_doValidationCacheOfSummary ;

        _model.model_internal::_summaryIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSummaryAvailable && _internal_summary == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "summary is required"));
        }

        model_internal::_doValidationCacheOfSummary = validationFailures;
        model_internal::_doValidationLastValOfSummary = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfConfidenceInterval : Array = null;
    model_internal var _doValidationLastValOfConfidenceInterval : String;

    model_internal function _doValidationForConfidenceInterval(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfConfidenceInterval != null && model_internal::_doValidationLastValOfConfidenceInterval == value)
           return model_internal::_doValidationCacheOfConfidenceInterval ;

        _model.model_internal::_confidenceIntervalIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isConfidenceIntervalAvailable && _internal_confidenceInterval == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "confidenceInterval is required"));
        }

        model_internal::_doValidationCacheOfConfidenceInterval = validationFailures;
        model_internal::_doValidationLastValOfConfidenceInterval = value;

        return validationFailures;
    }
    

}

}
