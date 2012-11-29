
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
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _DataObjectEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("ID", "layerid", "layer", "category", "subcategory", "field", "alias", "boundary", "coverage", "source", "year", "priority", "status", "boundaryLabel", "dataType", "security", "disclaimer", "variablecategory", "exclusion", "usertip", "summary", "confidenceInterval");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("ID", "layerid", "layer", "category", "subcategory", "field", "alias", "boundary", "coverage", "source", "year", "priority", "status", "boundaryLabel", "dataType", "security", "disclaimer", "variablecategory", "exclusion", "usertip", "summary", "confidenceInterval");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("ID", "layerid", "layer", "category", "subcategory", "field", "alias", "boundary", "coverage", "source", "year", "priority", "status", "boundaryLabel", "dataType", "security", "disclaimer", "variablecategory", "exclusion", "usertip", "summary", "confidenceInterval");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("ID", "layerid", "layer", "category", "subcategory", "field", "alias", "boundary", "coverage", "source", "year", "priority", "status", "boundaryLabel", "dataType", "security", "disclaimer", "variablecategory", "exclusion", "usertip", "summary", "confidenceInterval");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("ID", "layerid", "layer", "category", "subcategory", "field", "alias", "boundary", "coverage", "source", "year", "priority", "status", "boundaryLabel", "dataType", "security", "disclaimer", "variablecategory", "exclusion", "usertip", "summary", "confidenceInterval");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "DataObject";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _IDIsValid:Boolean;
    model_internal var _IDValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _IDIsValidCacheInitialized:Boolean = false;
    model_internal var _IDValidationFailureMessages:Array;
    
    model_internal var _layeridIsValid:Boolean;
    model_internal var _layeridValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _layeridIsValidCacheInitialized:Boolean = false;
    model_internal var _layeridValidationFailureMessages:Array;
    
    model_internal var _layerIsValid:Boolean;
    model_internal var _layerValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _layerIsValidCacheInitialized:Boolean = false;
    model_internal var _layerValidationFailureMessages:Array;
    
    model_internal var _categoryIsValid:Boolean;
    model_internal var _categoryValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _categoryIsValidCacheInitialized:Boolean = false;
    model_internal var _categoryValidationFailureMessages:Array;
    
    model_internal var _subcategoryIsValid:Boolean;
    model_internal var _subcategoryValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _subcategoryIsValidCacheInitialized:Boolean = false;
    model_internal var _subcategoryValidationFailureMessages:Array;
    
    model_internal var _fieldIsValid:Boolean;
    model_internal var _fieldValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _fieldIsValidCacheInitialized:Boolean = false;
    model_internal var _fieldValidationFailureMessages:Array;
    
    model_internal var _aliasIsValid:Boolean;
    model_internal var _aliasValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _aliasIsValidCacheInitialized:Boolean = false;
    model_internal var _aliasValidationFailureMessages:Array;
    
    model_internal var _boundaryIsValid:Boolean;
    model_internal var _boundaryValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _boundaryIsValidCacheInitialized:Boolean = false;
    model_internal var _boundaryValidationFailureMessages:Array;
    
    model_internal var _coverageIsValid:Boolean;
    model_internal var _coverageValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _coverageIsValidCacheInitialized:Boolean = false;
    model_internal var _coverageValidationFailureMessages:Array;
    
    model_internal var _sourceIsValid:Boolean;
    model_internal var _sourceValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sourceIsValidCacheInitialized:Boolean = false;
    model_internal var _sourceValidationFailureMessages:Array;
    
    model_internal var _yearIsValid:Boolean;
    model_internal var _yearValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _yearIsValidCacheInitialized:Boolean = false;
    model_internal var _yearValidationFailureMessages:Array;
    
    model_internal var _priorityIsValid:Boolean;
    model_internal var _priorityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _priorityIsValidCacheInitialized:Boolean = false;
    model_internal var _priorityValidationFailureMessages:Array;
    
    model_internal var _statusIsValid:Boolean;
    model_internal var _statusValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _statusIsValidCacheInitialized:Boolean = false;
    model_internal var _statusValidationFailureMessages:Array;
    
    model_internal var _boundaryLabelIsValid:Boolean;
    model_internal var _boundaryLabelValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _boundaryLabelIsValidCacheInitialized:Boolean = false;
    model_internal var _boundaryLabelValidationFailureMessages:Array;
    
    model_internal var _dataTypeIsValid:Boolean;
    model_internal var _dataTypeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _dataTypeIsValidCacheInitialized:Boolean = false;
    model_internal var _dataTypeValidationFailureMessages:Array;
    
    model_internal var _securityIsValid:Boolean;
    model_internal var _securityValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _securityIsValidCacheInitialized:Boolean = false;
    model_internal var _securityValidationFailureMessages:Array;
    
    model_internal var _disclaimerIsValid:Boolean;
    model_internal var _disclaimerValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _disclaimerIsValidCacheInitialized:Boolean = false;
    model_internal var _disclaimerValidationFailureMessages:Array;
    
    model_internal var _variablecategoryIsValid:Boolean;
    model_internal var _variablecategoryValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _variablecategoryIsValidCacheInitialized:Boolean = false;
    model_internal var _variablecategoryValidationFailureMessages:Array;
    
    model_internal var _exclusionIsValid:Boolean;
    model_internal var _exclusionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _exclusionIsValidCacheInitialized:Boolean = false;
    model_internal var _exclusionValidationFailureMessages:Array;
    
    model_internal var _usertipIsValid:Boolean;
    model_internal var _usertipValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _usertipIsValidCacheInitialized:Boolean = false;
    model_internal var _usertipValidationFailureMessages:Array;
    
    model_internal var _summaryIsValid:Boolean;
    model_internal var _summaryValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _summaryIsValidCacheInitialized:Boolean = false;
    model_internal var _summaryValidationFailureMessages:Array;
    
    model_internal var _confidenceIntervalIsValid:Boolean;
    model_internal var _confidenceIntervalValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _confidenceIntervalIsValidCacheInitialized:Boolean = false;
    model_internal var _confidenceIntervalValidationFailureMessages:Array;

    model_internal var _instance:_Super_DataObject;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _DataObjectEntityMetadata(value : _Super_DataObject)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["ID"] = new Array();
            model_internal::dependentsOnMap["layerid"] = new Array();
            model_internal::dependentsOnMap["layer"] = new Array();
            model_internal::dependentsOnMap["category"] = new Array();
            model_internal::dependentsOnMap["subcategory"] = new Array();
            model_internal::dependentsOnMap["field"] = new Array();
            model_internal::dependentsOnMap["alias"] = new Array();
            model_internal::dependentsOnMap["boundary"] = new Array();
            model_internal::dependentsOnMap["coverage"] = new Array();
            model_internal::dependentsOnMap["source"] = new Array();
            model_internal::dependentsOnMap["year"] = new Array();
            model_internal::dependentsOnMap["priority"] = new Array();
            model_internal::dependentsOnMap["status"] = new Array();
            model_internal::dependentsOnMap["boundaryLabel"] = new Array();
            model_internal::dependentsOnMap["dataType"] = new Array();
            model_internal::dependentsOnMap["security"] = new Array();
            model_internal::dependentsOnMap["disclaimer"] = new Array();
            model_internal::dependentsOnMap["variablecategory"] = new Array();
            model_internal::dependentsOnMap["exclusion"] = new Array();
            model_internal::dependentsOnMap["usertip"] = new Array();
            model_internal::dependentsOnMap["summary"] = new Array();
            model_internal::dependentsOnMap["confidenceInterval"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["ID"] = "String";
        model_internal::propertyTypeMap["layerid"] = "String";
        model_internal::propertyTypeMap["layer"] = "String";
        model_internal::propertyTypeMap["category"] = "String";
        model_internal::propertyTypeMap["subcategory"] = "String";
        model_internal::propertyTypeMap["field"] = "String";
        model_internal::propertyTypeMap["alias"] = "String";
        model_internal::propertyTypeMap["boundary"] = "String";
        model_internal::propertyTypeMap["coverage"] = "String";
        model_internal::propertyTypeMap["source"] = "String";
        model_internal::propertyTypeMap["year"] = "String";
        model_internal::propertyTypeMap["priority"] = "String";
        model_internal::propertyTypeMap["status"] = "String";
        model_internal::propertyTypeMap["boundaryLabel"] = "String";
        model_internal::propertyTypeMap["dataType"] = "String";
        model_internal::propertyTypeMap["security"] = "String";
        model_internal::propertyTypeMap["disclaimer"] = "String";
        model_internal::propertyTypeMap["variablecategory"] = "String";
        model_internal::propertyTypeMap["exclusion"] = "String";
        model_internal::propertyTypeMap["usertip"] = "String";
        model_internal::propertyTypeMap["summary"] = "String";
        model_internal::propertyTypeMap["confidenceInterval"] = "String";

        model_internal::_instance = value;
        model_internal::_IDValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForID);
        model_internal::_IDValidator.required = true;
        model_internal::_IDValidator.requiredFieldError = "ID is required";
        //model_internal::_IDValidator.source = model_internal::_instance;
        //model_internal::_IDValidator.property = "ID";
        model_internal::_layeridValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLayerid);
        model_internal::_layeridValidator.required = true;
        model_internal::_layeridValidator.requiredFieldError = "layerid is required";
        //model_internal::_layeridValidator.source = model_internal::_instance;
        //model_internal::_layeridValidator.property = "layerid";
        model_internal::_layerValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLayer);
        model_internal::_layerValidator.required = true;
        model_internal::_layerValidator.requiredFieldError = "layer is required";
        //model_internal::_layerValidator.source = model_internal::_instance;
        //model_internal::_layerValidator.property = "layer";
        model_internal::_categoryValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCategory);
        model_internal::_categoryValidator.required = true;
        model_internal::_categoryValidator.requiredFieldError = "category is required";
        //model_internal::_categoryValidator.source = model_internal::_instance;
        //model_internal::_categoryValidator.property = "category";
        model_internal::_subcategoryValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSubcategory);
        model_internal::_subcategoryValidator.required = true;
        model_internal::_subcategoryValidator.requiredFieldError = "subcategory is required";
        //model_internal::_subcategoryValidator.source = model_internal::_instance;
        //model_internal::_subcategoryValidator.property = "subcategory";
        model_internal::_fieldValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForField);
        model_internal::_fieldValidator.required = true;
        model_internal::_fieldValidator.requiredFieldError = "field is required";
        //model_internal::_fieldValidator.source = model_internal::_instance;
        //model_internal::_fieldValidator.property = "field";
        model_internal::_aliasValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAlias);
        model_internal::_aliasValidator.required = true;
        model_internal::_aliasValidator.requiredFieldError = "alias is required";
        //model_internal::_aliasValidator.source = model_internal::_instance;
        //model_internal::_aliasValidator.property = "alias";
        model_internal::_boundaryValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBoundary);
        model_internal::_boundaryValidator.required = true;
        model_internal::_boundaryValidator.requiredFieldError = "boundary is required";
        //model_internal::_boundaryValidator.source = model_internal::_instance;
        //model_internal::_boundaryValidator.property = "boundary";
        model_internal::_coverageValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCoverage);
        model_internal::_coverageValidator.required = true;
        model_internal::_coverageValidator.requiredFieldError = "coverage is required";
        //model_internal::_coverageValidator.source = model_internal::_instance;
        //model_internal::_coverageValidator.property = "coverage";
        model_internal::_sourceValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSource);
        model_internal::_sourceValidator.required = true;
        model_internal::_sourceValidator.requiredFieldError = "source is required";
        //model_internal::_sourceValidator.source = model_internal::_instance;
        //model_internal::_sourceValidator.property = "source";
        model_internal::_yearValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForYear);
        model_internal::_yearValidator.required = true;
        model_internal::_yearValidator.requiredFieldError = "year is required";
        //model_internal::_yearValidator.source = model_internal::_instance;
        //model_internal::_yearValidator.property = "year";
        model_internal::_priorityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForPriority);
        model_internal::_priorityValidator.required = true;
        model_internal::_priorityValidator.requiredFieldError = "priority is required";
        //model_internal::_priorityValidator.source = model_internal::_instance;
        //model_internal::_priorityValidator.property = "priority";
        model_internal::_statusValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForStatus);
        model_internal::_statusValidator.required = true;
        model_internal::_statusValidator.requiredFieldError = "status is required";
        //model_internal::_statusValidator.source = model_internal::_instance;
        //model_internal::_statusValidator.property = "status";
        model_internal::_boundaryLabelValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBoundaryLabel);
        model_internal::_boundaryLabelValidator.required = true;
        model_internal::_boundaryLabelValidator.requiredFieldError = "boundaryLabel is required";
        //model_internal::_boundaryLabelValidator.source = model_internal::_instance;
        //model_internal::_boundaryLabelValidator.property = "boundaryLabel";
        model_internal::_dataTypeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDataType);
        model_internal::_dataTypeValidator.required = true;
        model_internal::_dataTypeValidator.requiredFieldError = "dataType is required";
        //model_internal::_dataTypeValidator.source = model_internal::_instance;
        //model_internal::_dataTypeValidator.property = "dataType";
        model_internal::_securityValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSecurity);
        model_internal::_securityValidator.required = true;
        model_internal::_securityValidator.requiredFieldError = "security is required";
        //model_internal::_securityValidator.source = model_internal::_instance;
        //model_internal::_securityValidator.property = "security";
        model_internal::_disclaimerValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDisclaimer);
        model_internal::_disclaimerValidator.required = true;
        model_internal::_disclaimerValidator.requiredFieldError = "disclaimer is required";
        //model_internal::_disclaimerValidator.source = model_internal::_instance;
        //model_internal::_disclaimerValidator.property = "disclaimer";
        model_internal::_variablecategoryValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForVariablecategory);
        model_internal::_variablecategoryValidator.required = true;
        model_internal::_variablecategoryValidator.requiredFieldError = "variablecategory is required";
        //model_internal::_variablecategoryValidator.source = model_internal::_instance;
        //model_internal::_variablecategoryValidator.property = "variablecategory";
        model_internal::_exclusionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForExclusion);
        model_internal::_exclusionValidator.required = true;
        model_internal::_exclusionValidator.requiredFieldError = "exclusion is required";
        //model_internal::_exclusionValidator.source = model_internal::_instance;
        //model_internal::_exclusionValidator.property = "exclusion";
        model_internal::_usertipValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForUsertip);
        model_internal::_usertipValidator.required = true;
        model_internal::_usertipValidator.requiredFieldError = "usertip is required";
        //model_internal::_usertipValidator.source = model_internal::_instance;
        //model_internal::_usertipValidator.property = "usertip";
        model_internal::_summaryValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSummary);
        model_internal::_summaryValidator.required = true;
        model_internal::_summaryValidator.requiredFieldError = "summary is required";
        //model_internal::_summaryValidator.source = model_internal::_instance;
        //model_internal::_summaryValidator.property = "summary";
        model_internal::_confidenceIntervalValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForConfidenceInterval);
        model_internal::_confidenceIntervalValidator.required = true;
        model_internal::_confidenceIntervalValidator.requiredFieldError = "confidenceInterval is required";
        //model_internal::_confidenceIntervalValidator.source = model_internal::_instance;
        //model_internal::_confidenceIntervalValidator.property = "confidenceInterval";
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
            throw new Error(propertyName + " is not a data property of entity DataObject");
            
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
            throw new Error(propertyName + " is not a collection property of entity DataObject");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of DataObject");

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
            throw new Error(propertyName + " does not exist for entity DataObject");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity DataObject");
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
            throw new Error(propertyName + " does not exist for entity DataObject");
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
    public function get isIDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLayeridAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLayerAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCategoryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSubcategoryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFieldAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAliasAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBoundaryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCoverageAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSourceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isYearAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPriorityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStatusAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBoundaryLabelAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDataTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSecurityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDisclaimerAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVariablecategoryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isExclusionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUsertipAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSummaryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isConfidenceIntervalAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnID():void
    {
        if (model_internal::_IDIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfID = null;
            model_internal::calculateIDIsValid();
        }
    }
    public function invalidateDependentOnLayerid():void
    {
        if (model_internal::_layeridIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLayerid = null;
            model_internal::calculateLayeridIsValid();
        }
    }
    public function invalidateDependentOnLayer():void
    {
        if (model_internal::_layerIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLayer = null;
            model_internal::calculateLayerIsValid();
        }
    }
    public function invalidateDependentOnCategory():void
    {
        if (model_internal::_categoryIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCategory = null;
            model_internal::calculateCategoryIsValid();
        }
    }
    public function invalidateDependentOnSubcategory():void
    {
        if (model_internal::_subcategoryIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSubcategory = null;
            model_internal::calculateSubcategoryIsValid();
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
    public function invalidateDependentOnAlias():void
    {
        if (model_internal::_aliasIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAlias = null;
            model_internal::calculateAliasIsValid();
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
    public function invalidateDependentOnCoverage():void
    {
        if (model_internal::_coverageIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCoverage = null;
            model_internal::calculateCoverageIsValid();
        }
    }
    public function invalidateDependentOnSource():void
    {
        if (model_internal::_sourceIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSource = null;
            model_internal::calculateSourceIsValid();
        }
    }
    public function invalidateDependentOnYear():void
    {
        if (model_internal::_yearIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfYear = null;
            model_internal::calculateYearIsValid();
        }
    }
    public function invalidateDependentOnPriority():void
    {
        if (model_internal::_priorityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfPriority = null;
            model_internal::calculatePriorityIsValid();
        }
    }
    public function invalidateDependentOnStatus():void
    {
        if (model_internal::_statusIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfStatus = null;
            model_internal::calculateStatusIsValid();
        }
    }
    public function invalidateDependentOnBoundaryLabel():void
    {
        if (model_internal::_boundaryLabelIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBoundaryLabel = null;
            model_internal::calculateBoundaryLabelIsValid();
        }
    }
    public function invalidateDependentOnDataType():void
    {
        if (model_internal::_dataTypeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDataType = null;
            model_internal::calculateDataTypeIsValid();
        }
    }
    public function invalidateDependentOnSecurity():void
    {
        if (model_internal::_securityIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSecurity = null;
            model_internal::calculateSecurityIsValid();
        }
    }
    public function invalidateDependentOnDisclaimer():void
    {
        if (model_internal::_disclaimerIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDisclaimer = null;
            model_internal::calculateDisclaimerIsValid();
        }
    }
    public function invalidateDependentOnVariablecategory():void
    {
        if (model_internal::_variablecategoryIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfVariablecategory = null;
            model_internal::calculateVariablecategoryIsValid();
        }
    }
    public function invalidateDependentOnExclusion():void
    {
        if (model_internal::_exclusionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfExclusion = null;
            model_internal::calculateExclusionIsValid();
        }
    }
    public function invalidateDependentOnUsertip():void
    {
        if (model_internal::_usertipIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfUsertip = null;
            model_internal::calculateUsertipIsValid();
        }
    }
    public function invalidateDependentOnSummary():void
    {
        if (model_internal::_summaryIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSummary = null;
            model_internal::calculateSummaryIsValid();
        }
    }
    public function invalidateDependentOnConfidenceInterval():void
    {
        if (model_internal::_confidenceIntervalIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfConfidenceInterval = null;
            model_internal::calculateConfidenceIntervalIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get IDValidator() : StyleValidator
    {
        return model_internal::_IDValidator;
    }

    model_internal function set _IDIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_IDIsValid;         
        if (oldValue !== value)
        {
            model_internal::_IDIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IDIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get IDIsValid():Boolean
    {
        if (!model_internal::_IDIsValidCacheInitialized)
        {
            model_internal::calculateIDIsValid();
        }

        return model_internal::_IDIsValid;
    }

    model_internal function calculateIDIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_IDValidator.validate(model_internal::_instance.ID)
        model_internal::_IDIsValid_der = (valRes.results == null);
        model_internal::_IDIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::IDValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::IDValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get IDValidationFailureMessages():Array
    {
        if (model_internal::_IDValidationFailureMessages == null)
            model_internal::calculateIDIsValid();

        return _IDValidationFailureMessages;
    }

    model_internal function set IDValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_IDValidationFailureMessages;

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
            model_internal::_IDValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IDValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get layeridStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get layeridValidator() : StyleValidator
    {
        return model_internal::_layeridValidator;
    }

    model_internal function set _layeridIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_layeridIsValid;         
        if (oldValue !== value)
        {
            model_internal::_layeridIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layeridIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get layeridIsValid():Boolean
    {
        if (!model_internal::_layeridIsValidCacheInitialized)
        {
            model_internal::calculateLayeridIsValid();
        }

        return model_internal::_layeridIsValid;
    }

    model_internal function calculateLayeridIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_layeridValidator.validate(model_internal::_instance.layerid)
        model_internal::_layeridIsValid_der = (valRes.results == null);
        model_internal::_layeridIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::layeridValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::layeridValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get layeridValidationFailureMessages():Array
    {
        if (model_internal::_layeridValidationFailureMessages == null)
            model_internal::calculateLayeridIsValid();

        return _layeridValidationFailureMessages;
    }

    model_internal function set layeridValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_layeridValidationFailureMessages;

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
            model_internal::_layeridValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layeridValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get layerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get layerValidator() : StyleValidator
    {
        return model_internal::_layerValidator;
    }

    model_internal function set _layerIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_layerIsValid;         
        if (oldValue !== value)
        {
            model_internal::_layerIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layerIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get layerIsValid():Boolean
    {
        if (!model_internal::_layerIsValidCacheInitialized)
        {
            model_internal::calculateLayerIsValid();
        }

        return model_internal::_layerIsValid;
    }

    model_internal function calculateLayerIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_layerValidator.validate(model_internal::_instance.layer)
        model_internal::_layerIsValid_der = (valRes.results == null);
        model_internal::_layerIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::layerValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::layerValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get layerValidationFailureMessages():Array
    {
        if (model_internal::_layerValidationFailureMessages == null)
            model_internal::calculateLayerIsValid();

        return _layerValidationFailureMessages;
    }

    model_internal function set layerValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_layerValidationFailureMessages;

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
            model_internal::_layerValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layerValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get categoryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get categoryValidator() : StyleValidator
    {
        return model_internal::_categoryValidator;
    }

    model_internal function set _categoryIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_categoryIsValid;         
        if (oldValue !== value)
        {
            model_internal::_categoryIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categoryIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get categoryIsValid():Boolean
    {
        if (!model_internal::_categoryIsValidCacheInitialized)
        {
            model_internal::calculateCategoryIsValid();
        }

        return model_internal::_categoryIsValid;
    }

    model_internal function calculateCategoryIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_categoryValidator.validate(model_internal::_instance.category)
        model_internal::_categoryIsValid_der = (valRes.results == null);
        model_internal::_categoryIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::categoryValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::categoryValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get categoryValidationFailureMessages():Array
    {
        if (model_internal::_categoryValidationFailureMessages == null)
            model_internal::calculateCategoryIsValid();

        return _categoryValidationFailureMessages;
    }

    model_internal function set categoryValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_categoryValidationFailureMessages;

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
            model_internal::_categoryValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categoryValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get subcategoryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get subcategoryValidator() : StyleValidator
    {
        return model_internal::_subcategoryValidator;
    }

    model_internal function set _subcategoryIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_subcategoryIsValid;         
        if (oldValue !== value)
        {
            model_internal::_subcategoryIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subcategoryIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get subcategoryIsValid():Boolean
    {
        if (!model_internal::_subcategoryIsValidCacheInitialized)
        {
            model_internal::calculateSubcategoryIsValid();
        }

        return model_internal::_subcategoryIsValid;
    }

    model_internal function calculateSubcategoryIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_subcategoryValidator.validate(model_internal::_instance.subcategory)
        model_internal::_subcategoryIsValid_der = (valRes.results == null);
        model_internal::_subcategoryIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::subcategoryValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::subcategoryValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get subcategoryValidationFailureMessages():Array
    {
        if (model_internal::_subcategoryValidationFailureMessages == null)
            model_internal::calculateSubcategoryIsValid();

        return _subcategoryValidationFailureMessages;
    }

    model_internal function set subcategoryValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_subcategoryValidationFailureMessages;

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
            model_internal::_subcategoryValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subcategoryValidationFailureMessages", oldValue, value));
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
    public function get aliasStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get aliasValidator() : StyleValidator
    {
        return model_internal::_aliasValidator;
    }

    model_internal function set _aliasIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_aliasIsValid;         
        if (oldValue !== value)
        {
            model_internal::_aliasIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aliasIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get aliasIsValid():Boolean
    {
        if (!model_internal::_aliasIsValidCacheInitialized)
        {
            model_internal::calculateAliasIsValid();
        }

        return model_internal::_aliasIsValid;
    }

    model_internal function calculateAliasIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_aliasValidator.validate(model_internal::_instance.alias)
        model_internal::_aliasIsValid_der = (valRes.results == null);
        model_internal::_aliasIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::aliasValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::aliasValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get aliasValidationFailureMessages():Array
    {
        if (model_internal::_aliasValidationFailureMessages == null)
            model_internal::calculateAliasIsValid();

        return _aliasValidationFailureMessages;
    }

    model_internal function set aliasValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_aliasValidationFailureMessages;

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
            model_internal::_aliasValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "aliasValidationFailureMessages", oldValue, value));
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
    public function get coverageStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get coverageValidator() : StyleValidator
    {
        return model_internal::_coverageValidator;
    }

    model_internal function set _coverageIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_coverageIsValid;         
        if (oldValue !== value)
        {
            model_internal::_coverageIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "coverageIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get coverageIsValid():Boolean
    {
        if (!model_internal::_coverageIsValidCacheInitialized)
        {
            model_internal::calculateCoverageIsValid();
        }

        return model_internal::_coverageIsValid;
    }

    model_internal function calculateCoverageIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_coverageValidator.validate(model_internal::_instance.coverage)
        model_internal::_coverageIsValid_der = (valRes.results == null);
        model_internal::_coverageIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::coverageValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::coverageValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get coverageValidationFailureMessages():Array
    {
        if (model_internal::_coverageValidationFailureMessages == null)
            model_internal::calculateCoverageIsValid();

        return _coverageValidationFailureMessages;
    }

    model_internal function set coverageValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_coverageValidationFailureMessages;

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
            model_internal::_coverageValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "coverageValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get sourceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sourceValidator() : StyleValidator
    {
        return model_internal::_sourceValidator;
    }

    model_internal function set _sourceIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sourceIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sourceIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sourceIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sourceIsValid():Boolean
    {
        if (!model_internal::_sourceIsValidCacheInitialized)
        {
            model_internal::calculateSourceIsValid();
        }

        return model_internal::_sourceIsValid;
    }

    model_internal function calculateSourceIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sourceValidator.validate(model_internal::_instance.source)
        model_internal::_sourceIsValid_der = (valRes.results == null);
        model_internal::_sourceIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sourceValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sourceValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sourceValidationFailureMessages():Array
    {
        if (model_internal::_sourceValidationFailureMessages == null)
            model_internal::calculateSourceIsValid();

        return _sourceValidationFailureMessages;
    }

    model_internal function set sourceValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sourceValidationFailureMessages;

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
            model_internal::_sourceValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sourceValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get yearStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get yearValidator() : StyleValidator
    {
        return model_internal::_yearValidator;
    }

    model_internal function set _yearIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_yearIsValid;         
        if (oldValue !== value)
        {
            model_internal::_yearIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "yearIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get yearIsValid():Boolean
    {
        if (!model_internal::_yearIsValidCacheInitialized)
        {
            model_internal::calculateYearIsValid();
        }

        return model_internal::_yearIsValid;
    }

    model_internal function calculateYearIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_yearValidator.validate(model_internal::_instance.year)
        model_internal::_yearIsValid_der = (valRes.results == null);
        model_internal::_yearIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::yearValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::yearValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get yearValidationFailureMessages():Array
    {
        if (model_internal::_yearValidationFailureMessages == null)
            model_internal::calculateYearIsValid();

        return _yearValidationFailureMessages;
    }

    model_internal function set yearValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_yearValidationFailureMessages;

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
            model_internal::_yearValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "yearValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get priorityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get priorityValidator() : StyleValidator
    {
        return model_internal::_priorityValidator;
    }

    model_internal function set _priorityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_priorityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_priorityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "priorityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get priorityIsValid():Boolean
    {
        if (!model_internal::_priorityIsValidCacheInitialized)
        {
            model_internal::calculatePriorityIsValid();
        }

        return model_internal::_priorityIsValid;
    }

    model_internal function calculatePriorityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_priorityValidator.validate(model_internal::_instance.priority)
        model_internal::_priorityIsValid_der = (valRes.results == null);
        model_internal::_priorityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::priorityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::priorityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get priorityValidationFailureMessages():Array
    {
        if (model_internal::_priorityValidationFailureMessages == null)
            model_internal::calculatePriorityIsValid();

        return _priorityValidationFailureMessages;
    }

    model_internal function set priorityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_priorityValidationFailureMessages;

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
            model_internal::_priorityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "priorityValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get statusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get statusValidator() : StyleValidator
    {
        return model_internal::_statusValidator;
    }

    model_internal function set _statusIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_statusIsValid;         
        if (oldValue !== value)
        {
            model_internal::_statusIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "statusIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get statusIsValid():Boolean
    {
        if (!model_internal::_statusIsValidCacheInitialized)
        {
            model_internal::calculateStatusIsValid();
        }

        return model_internal::_statusIsValid;
    }

    model_internal function calculateStatusIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_statusValidator.validate(model_internal::_instance.status)
        model_internal::_statusIsValid_der = (valRes.results == null);
        model_internal::_statusIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::statusValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::statusValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get statusValidationFailureMessages():Array
    {
        if (model_internal::_statusValidationFailureMessages == null)
            model_internal::calculateStatusIsValid();

        return _statusValidationFailureMessages;
    }

    model_internal function set statusValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_statusValidationFailureMessages;

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
            model_internal::_statusValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "statusValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get boundaryLabelStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get boundaryLabelValidator() : StyleValidator
    {
        return model_internal::_boundaryLabelValidator;
    }

    model_internal function set _boundaryLabelIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_boundaryLabelIsValid;         
        if (oldValue !== value)
        {
            model_internal::_boundaryLabelIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boundaryLabelIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get boundaryLabelIsValid():Boolean
    {
        if (!model_internal::_boundaryLabelIsValidCacheInitialized)
        {
            model_internal::calculateBoundaryLabelIsValid();
        }

        return model_internal::_boundaryLabelIsValid;
    }

    model_internal function calculateBoundaryLabelIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_boundaryLabelValidator.validate(model_internal::_instance.boundaryLabel)
        model_internal::_boundaryLabelIsValid_der = (valRes.results == null);
        model_internal::_boundaryLabelIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::boundaryLabelValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::boundaryLabelValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get boundaryLabelValidationFailureMessages():Array
    {
        if (model_internal::_boundaryLabelValidationFailureMessages == null)
            model_internal::calculateBoundaryLabelIsValid();

        return _boundaryLabelValidationFailureMessages;
    }

    model_internal function set boundaryLabelValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_boundaryLabelValidationFailureMessages;

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
            model_internal::_boundaryLabelValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "boundaryLabelValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get dataTypeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get dataTypeValidator() : StyleValidator
    {
        return model_internal::_dataTypeValidator;
    }

    model_internal function set _dataTypeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_dataTypeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_dataTypeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataTypeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get dataTypeIsValid():Boolean
    {
        if (!model_internal::_dataTypeIsValidCacheInitialized)
        {
            model_internal::calculateDataTypeIsValid();
        }

        return model_internal::_dataTypeIsValid;
    }

    model_internal function calculateDataTypeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_dataTypeValidator.validate(model_internal::_instance.dataType)
        model_internal::_dataTypeIsValid_der = (valRes.results == null);
        model_internal::_dataTypeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::dataTypeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::dataTypeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get dataTypeValidationFailureMessages():Array
    {
        if (model_internal::_dataTypeValidationFailureMessages == null)
            model_internal::calculateDataTypeIsValid();

        return _dataTypeValidationFailureMessages;
    }

    model_internal function set dataTypeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_dataTypeValidationFailureMessages;

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
            model_internal::_dataTypeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataTypeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get securityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get securityValidator() : StyleValidator
    {
        return model_internal::_securityValidator;
    }

    model_internal function set _securityIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_securityIsValid;         
        if (oldValue !== value)
        {
            model_internal::_securityIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "securityIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get securityIsValid():Boolean
    {
        if (!model_internal::_securityIsValidCacheInitialized)
        {
            model_internal::calculateSecurityIsValid();
        }

        return model_internal::_securityIsValid;
    }

    model_internal function calculateSecurityIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_securityValidator.validate(model_internal::_instance.security)
        model_internal::_securityIsValid_der = (valRes.results == null);
        model_internal::_securityIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::securityValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::securityValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get securityValidationFailureMessages():Array
    {
        if (model_internal::_securityValidationFailureMessages == null)
            model_internal::calculateSecurityIsValid();

        return _securityValidationFailureMessages;
    }

    model_internal function set securityValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_securityValidationFailureMessages;

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
            model_internal::_securityValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "securityValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get disclaimerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get disclaimerValidator() : StyleValidator
    {
        return model_internal::_disclaimerValidator;
    }

    model_internal function set _disclaimerIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_disclaimerIsValid;         
        if (oldValue !== value)
        {
            model_internal::_disclaimerIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "disclaimerIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get disclaimerIsValid():Boolean
    {
        if (!model_internal::_disclaimerIsValidCacheInitialized)
        {
            model_internal::calculateDisclaimerIsValid();
        }

        return model_internal::_disclaimerIsValid;
    }

    model_internal function calculateDisclaimerIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_disclaimerValidator.validate(model_internal::_instance.disclaimer)
        model_internal::_disclaimerIsValid_der = (valRes.results == null);
        model_internal::_disclaimerIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::disclaimerValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::disclaimerValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get disclaimerValidationFailureMessages():Array
    {
        if (model_internal::_disclaimerValidationFailureMessages == null)
            model_internal::calculateDisclaimerIsValid();

        return _disclaimerValidationFailureMessages;
    }

    model_internal function set disclaimerValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_disclaimerValidationFailureMessages;

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
            model_internal::_disclaimerValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "disclaimerValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get variablecategoryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get variablecategoryValidator() : StyleValidator
    {
        return model_internal::_variablecategoryValidator;
    }

    model_internal function set _variablecategoryIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_variablecategoryIsValid;         
        if (oldValue !== value)
        {
            model_internal::_variablecategoryIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "variablecategoryIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get variablecategoryIsValid():Boolean
    {
        if (!model_internal::_variablecategoryIsValidCacheInitialized)
        {
            model_internal::calculateVariablecategoryIsValid();
        }

        return model_internal::_variablecategoryIsValid;
    }

    model_internal function calculateVariablecategoryIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_variablecategoryValidator.validate(model_internal::_instance.variablecategory)
        model_internal::_variablecategoryIsValid_der = (valRes.results == null);
        model_internal::_variablecategoryIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::variablecategoryValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::variablecategoryValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get variablecategoryValidationFailureMessages():Array
    {
        if (model_internal::_variablecategoryValidationFailureMessages == null)
            model_internal::calculateVariablecategoryIsValid();

        return _variablecategoryValidationFailureMessages;
    }

    model_internal function set variablecategoryValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_variablecategoryValidationFailureMessages;

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
            model_internal::_variablecategoryValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "variablecategoryValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get exclusionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get exclusionValidator() : StyleValidator
    {
        return model_internal::_exclusionValidator;
    }

    model_internal function set _exclusionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_exclusionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_exclusionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exclusionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get exclusionIsValid():Boolean
    {
        if (!model_internal::_exclusionIsValidCacheInitialized)
        {
            model_internal::calculateExclusionIsValid();
        }

        return model_internal::_exclusionIsValid;
    }

    model_internal function calculateExclusionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_exclusionValidator.validate(model_internal::_instance.exclusion)
        model_internal::_exclusionIsValid_der = (valRes.results == null);
        model_internal::_exclusionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::exclusionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::exclusionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get exclusionValidationFailureMessages():Array
    {
        if (model_internal::_exclusionValidationFailureMessages == null)
            model_internal::calculateExclusionIsValid();

        return _exclusionValidationFailureMessages;
    }

    model_internal function set exclusionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_exclusionValidationFailureMessages;

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
            model_internal::_exclusionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exclusionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get usertipStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get usertipValidator() : StyleValidator
    {
        return model_internal::_usertipValidator;
    }

    model_internal function set _usertipIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_usertipIsValid;         
        if (oldValue !== value)
        {
            model_internal::_usertipIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usertipIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get usertipIsValid():Boolean
    {
        if (!model_internal::_usertipIsValidCacheInitialized)
        {
            model_internal::calculateUsertipIsValid();
        }

        return model_internal::_usertipIsValid;
    }

    model_internal function calculateUsertipIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_usertipValidator.validate(model_internal::_instance.usertip)
        model_internal::_usertipIsValid_der = (valRes.results == null);
        model_internal::_usertipIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::usertipValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::usertipValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get usertipValidationFailureMessages():Array
    {
        if (model_internal::_usertipValidationFailureMessages == null)
            model_internal::calculateUsertipIsValid();

        return _usertipValidationFailureMessages;
    }

    model_internal function set usertipValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_usertipValidationFailureMessages;

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
            model_internal::_usertipValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "usertipValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get summaryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get summaryValidator() : StyleValidator
    {
        return model_internal::_summaryValidator;
    }

    model_internal function set _summaryIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_summaryIsValid;         
        if (oldValue !== value)
        {
            model_internal::_summaryIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "summaryIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get summaryIsValid():Boolean
    {
        if (!model_internal::_summaryIsValidCacheInitialized)
        {
            model_internal::calculateSummaryIsValid();
        }

        return model_internal::_summaryIsValid;
    }

    model_internal function calculateSummaryIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_summaryValidator.validate(model_internal::_instance.summary)
        model_internal::_summaryIsValid_der = (valRes.results == null);
        model_internal::_summaryIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::summaryValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::summaryValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get summaryValidationFailureMessages():Array
    {
        if (model_internal::_summaryValidationFailureMessages == null)
            model_internal::calculateSummaryIsValid();

        return _summaryValidationFailureMessages;
    }

    model_internal function set summaryValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_summaryValidationFailureMessages;

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
            model_internal::_summaryValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "summaryValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get confidenceIntervalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get confidenceIntervalValidator() : StyleValidator
    {
        return model_internal::_confidenceIntervalValidator;
    }

    model_internal function set _confidenceIntervalIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_confidenceIntervalIsValid;         
        if (oldValue !== value)
        {
            model_internal::_confidenceIntervalIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "confidenceIntervalIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get confidenceIntervalIsValid():Boolean
    {
        if (!model_internal::_confidenceIntervalIsValidCacheInitialized)
        {
            model_internal::calculateConfidenceIntervalIsValid();
        }

        return model_internal::_confidenceIntervalIsValid;
    }

    model_internal function calculateConfidenceIntervalIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_confidenceIntervalValidator.validate(model_internal::_instance.confidenceInterval)
        model_internal::_confidenceIntervalIsValid_der = (valRes.results == null);
        model_internal::_confidenceIntervalIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::confidenceIntervalValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::confidenceIntervalValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get confidenceIntervalValidationFailureMessages():Array
    {
        if (model_internal::_confidenceIntervalValidationFailureMessages == null)
            model_internal::calculateConfidenceIntervalIsValid();

        return _confidenceIntervalValidationFailureMessages;
    }

    model_internal function set confidenceIntervalValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_confidenceIntervalValidationFailureMessages;

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
            model_internal::_confidenceIntervalValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "confidenceIntervalValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
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
            case("ID"):
            {
                return IDValidationFailureMessages;
            }
            case("layerid"):
            {
                return layeridValidationFailureMessages;
            }
            case("layer"):
            {
                return layerValidationFailureMessages;
            }
            case("category"):
            {
                return categoryValidationFailureMessages;
            }
            case("subcategory"):
            {
                return subcategoryValidationFailureMessages;
            }
            case("field"):
            {
                return fieldValidationFailureMessages;
            }
            case("alias"):
            {
                return aliasValidationFailureMessages;
            }
            case("boundary"):
            {
                return boundaryValidationFailureMessages;
            }
            case("coverage"):
            {
                return coverageValidationFailureMessages;
            }
            case("source"):
            {
                return sourceValidationFailureMessages;
            }
            case("year"):
            {
                return yearValidationFailureMessages;
            }
            case("priority"):
            {
                return priorityValidationFailureMessages;
            }
            case("status"):
            {
                return statusValidationFailureMessages;
            }
            case("boundaryLabel"):
            {
                return boundaryLabelValidationFailureMessages;
            }
            case("dataType"):
            {
                return dataTypeValidationFailureMessages;
            }
            case("security"):
            {
                return securityValidationFailureMessages;
            }
            case("disclaimer"):
            {
                return disclaimerValidationFailureMessages;
            }
            case("variablecategory"):
            {
                return variablecategoryValidationFailureMessages;
            }
            case("exclusion"):
            {
                return exclusionValidationFailureMessages;
            }
            case("usertip"):
            {
                return usertipValidationFailureMessages;
            }
            case("summary"):
            {
                return summaryValidationFailureMessages;
            }
            case("confidenceInterval"):
            {
                return confidenceIntervalValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
