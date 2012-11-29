/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Item.as.
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
import valueObjects.Variables;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Item extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Variables.initRemoteClassAliasSingleChild();
        valueObjects.Item.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _ItemEntityMetadata;
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
    private var _internal_school : String;
    private var _internal_students : String;
    private var _internal_description : String;
    private var _internal_ID : String;
    private var _internal_layerid : String;
    private var _internal_subcategory : String;
    private var _internal_coverage : String;
    private var _internal_source : String;
    private var _internal_year : String;
    private var _internal_priority : String;
    private var _internal_status : String;
    private var _internal_boundaryLabel : String;
    private var _internal_dataType : String;
    private var _internal_security : String;
    private var _internal_disclaimer : String;
    private var _internal_exclusion : String;
    private var _internal_usertip : String;
    private var _internal_summary : String;
    private var _internal_confidenceinterval : String;
    private var _internal_boundary : String;
    private var _internal_variables : valueObjects.Variables;
    private var _internal_category : String;
    private var _internal_field : String;
    private var _internal_layer : String;
    private var _internal_alias : String;
    private var _internal_variablecategory : String;
    private var _internal_rank : Number;
    private var _internal_Tract : String;
    private var _internal_item : ArrayCollection;
    private var _internal_NA : ArrayCollection;
    private var _internal_categoryID : String;
    private var _internal_definition : String;
    private var _internal_name : String;
    private var _internal_LastUpdated : String;
    private var _internal_address : String;
    private var _internal_city : String;
    private var _internal_zip : String;
    private var _internal_phone : String;
    private var _internal_email : String;
    private var _internal_latitude : String;
    private var _internal_longitude : String;
    private var _internal_distance : String;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Item()
    {
        _model = new _ItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "school", model_internal::setterListenerSchool));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "students", model_internal::setterListenerStudents));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "description", model_internal::setterListenerDescription));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "variables", model_internal::setterListenerVariables));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "categoryID", model_internal::setterListenerCategoryID));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "definition", model_internal::setterListenerDefinition));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "LastUpdated", model_internal::setterListenerLastUpdated));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get school() : String
    {
        return _internal_school;
    }

    [Bindable(event="propertyChange")]
    public function get students() : String
    {
        return _internal_students;
    }

    [Bindable(event="propertyChange")]
    public function get description() : String
    {
        return _internal_description;
    }

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
    public function get subcategory() : String
    {
        return _internal_subcategory;
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
    public function get confidenceinterval() : String
    {
        return _internal_confidenceinterval;
    }

    [Bindable(event="propertyChange")]
    public function get boundary() : String
    {
        return _internal_boundary;
    }

    [Bindable(event="propertyChange")]
    public function get variables() : valueObjects.Variables
    {
        return _internal_variables;
    }

    [Bindable(event="propertyChange")]
    public function get category() : String
    {
        return _internal_category;
    }

    [Bindable(event="propertyChange")]
    public function get field() : String
    {
        return _internal_field;
    }

    [Bindable(event="propertyChange")]
    public function get layer() : String
    {
        return _internal_layer;
    }

    [Bindable(event="propertyChange")]
    public function get alias() : String
    {
        return _internal_alias;
    }

    [Bindable(event="propertyChange")]
    public function get variablecategory() : String
    {
        return _internal_variablecategory;
    }

    [Bindable(event="propertyChange")]
    public function get rank() : Number
    {
        return _internal_rank;
    }

    [Bindable(event="propertyChange")]
    public function get Tract() : String
    {
        return _internal_Tract;
    }

    [Bindable(event="propertyChange")]
    public function get item() : ArrayCollection
    {
        return _internal_item;
    }

    [Bindable(event="propertyChange")]
    public function get NA() : ArrayCollection
    {
        return _internal_NA;
    }

    [Bindable(event="propertyChange")]
    public function get categoryID() : String
    {
        return _internal_categoryID;
    }

    [Bindable(event="propertyChange")]
    public function get definition() : String
    {
        return _internal_definition;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get LastUpdated() : String
    {
        return _internal_LastUpdated;
    }

    [Bindable(event="propertyChange")]
    public function get address() : String
    {
        return _internal_address;
    }

    [Bindable(event="propertyChange")]
    public function get city() : String
    {
        return _internal_city;
    }

    [Bindable(event="propertyChange")]
    public function get zip() : String
    {
        return _internal_zip;
    }

    [Bindable(event="propertyChange")]
    public function get phone() : String
    {
        return _internal_phone;
    }

    [Bindable(event="propertyChange")]
    public function get email() : String
    {
        return _internal_email;
    }

    [Bindable(event="propertyChange")]
    public function get latitude() : String
    {
        return _internal_latitude;
    }

    [Bindable(event="propertyChange")]
    public function get longitude() : String
    {
        return _internal_longitude;
    }

    [Bindable(event="propertyChange")]
    public function get distance() : String
    {
        return _internal_distance;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set school(value:String) : void
    {
        var oldValue:String = _internal_school;
        if (oldValue !== value)
        {
            _internal_school = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "school", oldValue, _internal_school));
        }
    }

    public function set students(value:String) : void
    {
        var oldValue:String = _internal_students;
        if (oldValue !== value)
        {
            _internal_students = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "students", oldValue, _internal_students));
        }
    }

    public function set description(value:String) : void
    {
        var oldValue:String = _internal_description;
        if (oldValue !== value)
        {
            _internal_description = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "description", oldValue, _internal_description));
        }
    }

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

    public function set subcategory(value:String) : void
    {
        var oldValue:String = _internal_subcategory;
        if (oldValue !== value)
        {
            _internal_subcategory = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subcategory", oldValue, _internal_subcategory));
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

    public function set confidenceinterval(value:String) : void
    {
        var oldValue:String = _internal_confidenceinterval;
        if (oldValue !== value)
        {
            _internal_confidenceinterval = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "confidenceinterval", oldValue, _internal_confidenceinterval));
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

    public function set variables(value:valueObjects.Variables) : void
    {
        var oldValue:valueObjects.Variables = _internal_variables;
        if (oldValue !== value)
        {
            _internal_variables = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "variables", oldValue, _internal_variables));
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

    public function set field(value:String) : void
    {
        var oldValue:String = _internal_field;
        if (oldValue !== value)
        {
            _internal_field = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "field", oldValue, _internal_field));
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

    public function set alias(value:String) : void
    {
        var oldValue:String = _internal_alias;
        if (oldValue !== value)
        {
            _internal_alias = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alias", oldValue, _internal_alias));
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

    public function set rank(value:Number) : void
    {
        var oldValue:Number = _internal_rank;
        if (isNaN(_internal_rank) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_rank = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rank", oldValue, _internal_rank));
        }
    }

    public function set Tract(value:String) : void
    {
        var oldValue:String = _internal_Tract;
        if (oldValue !== value)
        {
            _internal_Tract = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Tract", oldValue, _internal_Tract));
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

    public function set NA(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_NA;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_NA = value;
            }
            else if (value is Array)
            {
                _internal_NA = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_NA = null;
            }
            else
            {
                throw new Error("value of NA must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NA", oldValue, _internal_NA));
        }
    }

    public function set categoryID(value:String) : void
    {
        var oldValue:String = _internal_categoryID;
        if (oldValue !== value)
        {
            _internal_categoryID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categoryID", oldValue, _internal_categoryID));
        }
    }

    public function set definition(value:String) : void
    {
        var oldValue:String = _internal_definition;
        if (oldValue !== value)
        {
            _internal_definition = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "definition", oldValue, _internal_definition));
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

    public function set LastUpdated(value:String) : void
    {
        var oldValue:String = _internal_LastUpdated;
        if (oldValue !== value)
        {
            _internal_LastUpdated = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LastUpdated", oldValue, _internal_LastUpdated));
        }
    }

    public function set address(value:String) : void
    {
        var oldValue:String = _internal_address;
        if (oldValue !== value)
        {
            _internal_address = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "address", oldValue, _internal_address));
        }
    }

    public function set city(value:String) : void
    {
        var oldValue:String = _internal_city;
        if (oldValue !== value)
        {
            _internal_city = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "city", oldValue, _internal_city));
        }
    }

    public function set zip(value:String) : void
    {
        var oldValue:String = _internal_zip;
        if (oldValue !== value)
        {
            _internal_zip = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zip", oldValue, _internal_zip));
        }
    }

    public function set phone(value:String) : void
    {
        var oldValue:String = _internal_phone;
        if (oldValue !== value)
        {
            _internal_phone = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "phone", oldValue, _internal_phone));
        }
    }

    public function set email(value:String) : void
    {
        var oldValue:String = _internal_email;
        if (oldValue !== value)
        {
            _internal_email = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "email", oldValue, _internal_email));
        }
    }

    public function set latitude(value:String) : void
    {
        var oldValue:String = _internal_latitude;
        if (oldValue !== value)
        {
            _internal_latitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "latitude", oldValue, _internal_latitude));
        }
    }

    public function set longitude(value:String) : void
    {
        var oldValue:String = _internal_longitude;
        if (oldValue !== value)
        {
            _internal_longitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "longitude", oldValue, _internal_longitude));
        }
    }

    public function set distance(value:String) : void
    {
        var oldValue:String = _internal_distance;
        if (oldValue !== value)
        {
            _internal_distance = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "distance", oldValue, _internal_distance));
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

    model_internal function setterListenerSchool(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSchool();
    }

    model_internal function setterListenerStudents(value:flash.events.Event):void
    {
        _model.invalidateDependentOnStudents();
    }

    model_internal function setterListenerDescription(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescription();
    }

    model_internal function setterListenerVariables(value:flash.events.Event):void
    {
        _model.invalidateDependentOnVariables();
    }

    model_internal function setterListenerCategoryID(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCategoryID();
    }

    model_internal function setterListenerDefinition(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDefinition();
    }

    model_internal function setterListenerLastUpdated(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLastUpdated();
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
        if (!_model.schoolIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_schoolValidationFailureMessages);
        }
        if (!_model.studentsIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_studentsValidationFailureMessages);
        }
        if (!_model.descriptionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descriptionValidationFailureMessages);
        }
        if (!_model.variablesIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_variablesValidationFailureMessages);
        }
        if (!_model.categoryIDIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_categoryIDValidationFailureMessages);
        }
        if (!_model.definitionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_definitionValidationFailureMessages);
        }
        if (!_model.LastUpdatedIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_LastUpdatedValidationFailureMessages);
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
    public function get _model() : _ItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ItemEntityMetadata) : void
    {
        var oldValue : _ItemEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfSchool : Array = null;
    model_internal var _doValidationLastValOfSchool : String;

    model_internal function _doValidationForSchool(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSchool != null && model_internal::_doValidationLastValOfSchool == value)
           return model_internal::_doValidationCacheOfSchool ;

        _model.model_internal::_schoolIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSchoolAvailable && _internal_school == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "school is required"));
        }

        model_internal::_doValidationCacheOfSchool = validationFailures;
        model_internal::_doValidationLastValOfSchool = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfStudents : Array = null;
    model_internal var _doValidationLastValOfStudents : String;

    model_internal function _doValidationForStudents(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfStudents != null && model_internal::_doValidationLastValOfStudents == value)
           return model_internal::_doValidationCacheOfStudents ;

        _model.model_internal::_studentsIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isStudentsAvailable && _internal_students == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "students is required"));
        }

        model_internal::_doValidationCacheOfStudents = validationFailures;
        model_internal::_doValidationLastValOfStudents = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDescription : Array = null;
    model_internal var _doValidationLastValOfDescription : String;

    model_internal function _doValidationForDescription(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescription != null && model_internal::_doValidationLastValOfDescription == value)
           return model_internal::_doValidationCacheOfDescription ;

        _model.model_internal::_descriptionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescriptionAvailable && _internal_description == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "description is required"));
        }

        model_internal::_doValidationCacheOfDescription = validationFailures;
        model_internal::_doValidationLastValOfDescription = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfVariables : Array = null;
    model_internal var _doValidationLastValOfVariables : valueObjects.Variables;

    model_internal function _doValidationForVariables(valueIn:Object):Array
    {
        var value : valueObjects.Variables = valueIn as valueObjects.Variables;

        if (model_internal::_doValidationCacheOfVariables != null && model_internal::_doValidationLastValOfVariables == value)
           return model_internal::_doValidationCacheOfVariables ;

        _model.model_internal::_variablesIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isVariablesAvailable && _internal_variables == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "variables is required"));
        }

        model_internal::_doValidationCacheOfVariables = validationFailures;
        model_internal::_doValidationLastValOfVariables = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCategoryID : Array = null;
    model_internal var _doValidationLastValOfCategoryID : String;

    model_internal function _doValidationForCategoryID(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCategoryID != null && model_internal::_doValidationLastValOfCategoryID == value)
           return model_internal::_doValidationCacheOfCategoryID ;

        _model.model_internal::_categoryIDIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCategoryIDAvailable && _internal_categoryID == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "categoryID is required"));
        }

        model_internal::_doValidationCacheOfCategoryID = validationFailures;
        model_internal::_doValidationLastValOfCategoryID = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDefinition : Array = null;
    model_internal var _doValidationLastValOfDefinition : String;

    model_internal function _doValidationForDefinition(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDefinition != null && model_internal::_doValidationLastValOfDefinition == value)
           return model_internal::_doValidationCacheOfDefinition ;

        _model.model_internal::_definitionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDefinitionAvailable && _internal_definition == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "definition is required"));
        }

        model_internal::_doValidationCacheOfDefinition = validationFailures;
        model_internal::_doValidationLastValOfDefinition = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLastUpdated : Array = null;
    model_internal var _doValidationLastValOfLastUpdated : String;

    model_internal function _doValidationForLastUpdated(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLastUpdated != null && model_internal::_doValidationLastValOfLastUpdated == value)
           return model_internal::_doValidationCacheOfLastUpdated ;

        _model.model_internal::_LastUpdatedIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLastUpdatedAvailable && _internal_LastUpdated == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "LastUpdated is required"));
        }

        model_internal::_doValidationCacheOfLastUpdated = validationFailures;
        model_internal::_doValidationLastValOfLastUpdated = value;

        return validationFailures;
    }
    

}

}
