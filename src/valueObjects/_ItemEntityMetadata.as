
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
import valueObjects.Variables;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _ItemEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("school", "students", "description", "ID", "layerid", "subcategory", "coverage", "source", "year", "priority", "status", "boundaryLabel", "dataType", "security", "disclaimer", "exclusion", "usertip", "summary", "confidenceinterval", "boundary", "variables", "category", "field", "layer", "alias", "variablecategory", "rank", "Tract", "item", "NA", "categoryID", "definition", "name", "LastUpdated", "address", "city", "zip", "phone", "email", "latitude", "longitude", "distance");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("school", "students", "description", "variables", "categoryID", "definition", "LastUpdated");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("school", "students", "description", "ID", "layerid", "subcategory", "coverage", "source", "year", "priority", "status", "boundaryLabel", "dataType", "security", "disclaimer", "exclusion", "usertip", "summary", "confidenceinterval", "boundary", "variables", "category", "field", "layer", "alias", "variablecategory", "rank", "Tract", "item", "NA", "categoryID", "definition", "name", "LastUpdated", "address", "city", "zip", "phone", "email", "latitude", "longitude", "distance");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("school", "students", "description", "ID", "layerid", "subcategory", "coverage", "source", "year", "priority", "status", "boundaryLabel", "dataType", "security", "disclaimer", "exclusion", "usertip", "summary", "confidenceinterval", "boundary", "variables", "category", "field", "layer", "alias", "variablecategory", "rank", "Tract", "item", "NA", "categoryID", "definition", "name", "LastUpdated", "address", "city", "zip", "phone", "email", "latitude", "longitude", "distance");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("school", "students", "description", "ID", "layerid", "subcategory", "coverage", "source", "year", "priority", "status", "boundaryLabel", "dataType", "security", "disclaimer", "exclusion", "usertip", "summary", "confidenceinterval", "boundary", "variables", "category", "field", "layer", "alias", "variablecategory", "rank", "Tract", "item", "NA", "categoryID", "definition", "name", "LastUpdated", "address", "city", "zip", "phone", "email", "latitude", "longitude", "distance");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("item", "NA");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Item";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _schoolIsValid:Boolean;
    model_internal var _schoolValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _schoolIsValidCacheInitialized:Boolean = false;
    model_internal var _schoolValidationFailureMessages:Array;
    
    model_internal var _studentsIsValid:Boolean;
    model_internal var _studentsValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _studentsIsValidCacheInitialized:Boolean = false;
    model_internal var _studentsValidationFailureMessages:Array;
    
    model_internal var _descriptionIsValid:Boolean;
    model_internal var _descriptionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descriptionIsValidCacheInitialized:Boolean = false;
    model_internal var _descriptionValidationFailureMessages:Array;
    
    model_internal var _variablesIsValid:Boolean;
    model_internal var _variablesValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _variablesIsValidCacheInitialized:Boolean = false;
    model_internal var _variablesValidationFailureMessages:Array;
    
    model_internal var _categoryIDIsValid:Boolean;
    model_internal var _categoryIDValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _categoryIDIsValidCacheInitialized:Boolean = false;
    model_internal var _categoryIDValidationFailureMessages:Array;
    
    model_internal var _definitionIsValid:Boolean;
    model_internal var _definitionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _definitionIsValidCacheInitialized:Boolean = false;
    model_internal var _definitionValidationFailureMessages:Array;
    
    model_internal var _LastUpdatedIsValid:Boolean;
    model_internal var _LastUpdatedValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _LastUpdatedIsValidCacheInitialized:Boolean = false;
    model_internal var _LastUpdatedValidationFailureMessages:Array;

    model_internal var _instance:_Super_Item;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ItemEntityMetadata(value : _Super_Item)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["school"] = new Array();
            model_internal::dependentsOnMap["students"] = new Array();
            model_internal::dependentsOnMap["description"] = new Array();
            model_internal::dependentsOnMap["ID"] = new Array();
            model_internal::dependentsOnMap["layerid"] = new Array();
            model_internal::dependentsOnMap["subcategory"] = new Array();
            model_internal::dependentsOnMap["coverage"] = new Array();
            model_internal::dependentsOnMap["source"] = new Array();
            model_internal::dependentsOnMap["year"] = new Array();
            model_internal::dependentsOnMap["priority"] = new Array();
            model_internal::dependentsOnMap["status"] = new Array();
            model_internal::dependentsOnMap["boundaryLabel"] = new Array();
            model_internal::dependentsOnMap["dataType"] = new Array();
            model_internal::dependentsOnMap["security"] = new Array();
            model_internal::dependentsOnMap["disclaimer"] = new Array();
            model_internal::dependentsOnMap["exclusion"] = new Array();
            model_internal::dependentsOnMap["usertip"] = new Array();
            model_internal::dependentsOnMap["summary"] = new Array();
            model_internal::dependentsOnMap["confidenceinterval"] = new Array();
            model_internal::dependentsOnMap["boundary"] = new Array();
            model_internal::dependentsOnMap["variables"] = new Array();
            model_internal::dependentsOnMap["category"] = new Array();
            model_internal::dependentsOnMap["field"] = new Array();
            model_internal::dependentsOnMap["layer"] = new Array();
            model_internal::dependentsOnMap["alias"] = new Array();
            model_internal::dependentsOnMap["variablecategory"] = new Array();
            model_internal::dependentsOnMap["rank"] = new Array();
            model_internal::dependentsOnMap["Tract"] = new Array();
            model_internal::dependentsOnMap["item"] = new Array();
            model_internal::dependentsOnMap["NA"] = new Array();
            model_internal::dependentsOnMap["categoryID"] = new Array();
            model_internal::dependentsOnMap["definition"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["LastUpdated"] = new Array();
            model_internal::dependentsOnMap["address"] = new Array();
            model_internal::dependentsOnMap["city"] = new Array();
            model_internal::dependentsOnMap["zip"] = new Array();
            model_internal::dependentsOnMap["phone"] = new Array();
            model_internal::dependentsOnMap["email"] = new Array();
            model_internal::dependentsOnMap["latitude"] = new Array();
            model_internal::dependentsOnMap["longitude"] = new Array();
            model_internal::dependentsOnMap["distance"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["item"] = "Object";
            model_internal::collectionBaseMap["NA"] = "String";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["school"] = "String";
        model_internal::propertyTypeMap["students"] = "String";
        model_internal::propertyTypeMap["description"] = "String";
        model_internal::propertyTypeMap["ID"] = "String";
        model_internal::propertyTypeMap["layerid"] = "String";
        model_internal::propertyTypeMap["subcategory"] = "String";
        model_internal::propertyTypeMap["coverage"] = "String";
        model_internal::propertyTypeMap["source"] = "String";
        model_internal::propertyTypeMap["year"] = "String";
        model_internal::propertyTypeMap["priority"] = "String";
        model_internal::propertyTypeMap["status"] = "String";
        model_internal::propertyTypeMap["boundaryLabel"] = "String";
        model_internal::propertyTypeMap["dataType"] = "String";
        model_internal::propertyTypeMap["security"] = "String";
        model_internal::propertyTypeMap["disclaimer"] = "String";
        model_internal::propertyTypeMap["exclusion"] = "String";
        model_internal::propertyTypeMap["usertip"] = "String";
        model_internal::propertyTypeMap["summary"] = "String";
        model_internal::propertyTypeMap["confidenceinterval"] = "String";
        model_internal::propertyTypeMap["boundary"] = "String";
        model_internal::propertyTypeMap["variables"] = "valueObjects.Variables";
        model_internal::propertyTypeMap["category"] = "String";
        model_internal::propertyTypeMap["field"] = "String";
        model_internal::propertyTypeMap["layer"] = "String";
        model_internal::propertyTypeMap["alias"] = "String";
        model_internal::propertyTypeMap["variablecategory"] = "String";
        model_internal::propertyTypeMap["rank"] = "Number";
        model_internal::propertyTypeMap["Tract"] = "String";
        model_internal::propertyTypeMap["item"] = "ArrayCollection";
        model_internal::propertyTypeMap["NA"] = "ArrayCollection";
        model_internal::propertyTypeMap["categoryID"] = "String";
        model_internal::propertyTypeMap["definition"] = "String";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["LastUpdated"] = "String";
        model_internal::propertyTypeMap["address"] = "String";
        model_internal::propertyTypeMap["city"] = "String";
        model_internal::propertyTypeMap["zip"] = "String";
        model_internal::propertyTypeMap["phone"] = "String";
        model_internal::propertyTypeMap["email"] = "String";
        model_internal::propertyTypeMap["latitude"] = "String";
        model_internal::propertyTypeMap["longitude"] = "String";
        model_internal::propertyTypeMap["distance"] = "String";

        model_internal::_instance = value;
        model_internal::_schoolValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSchool);
        model_internal::_schoolValidator.required = true;
        model_internal::_schoolValidator.requiredFieldError = "school is required";
        //model_internal::_schoolValidator.source = model_internal::_instance;
        //model_internal::_schoolValidator.property = "school";
        model_internal::_studentsValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForStudents);
        model_internal::_studentsValidator.required = true;
        model_internal::_studentsValidator.requiredFieldError = "students is required";
        //model_internal::_studentsValidator.source = model_internal::_instance;
        //model_internal::_studentsValidator.property = "students";
        model_internal::_descriptionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescription);
        model_internal::_descriptionValidator.required = true;
        model_internal::_descriptionValidator.requiredFieldError = "description is required";
        //model_internal::_descriptionValidator.source = model_internal::_instance;
        //model_internal::_descriptionValidator.property = "description";
        model_internal::_variablesValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForVariables);
        model_internal::_variablesValidator.required = true;
        model_internal::_variablesValidator.requiredFieldError = "variables is required";
        //model_internal::_variablesValidator.source = model_internal::_instance;
        //model_internal::_variablesValidator.property = "variables";
        model_internal::_categoryIDValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCategoryID);
        model_internal::_categoryIDValidator.required = true;
        model_internal::_categoryIDValidator.requiredFieldError = "categoryID is required";
        //model_internal::_categoryIDValidator.source = model_internal::_instance;
        //model_internal::_categoryIDValidator.property = "categoryID";
        model_internal::_definitionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDefinition);
        model_internal::_definitionValidator.required = true;
        model_internal::_definitionValidator.requiredFieldError = "definition is required";
        //model_internal::_definitionValidator.source = model_internal::_instance;
        //model_internal::_definitionValidator.property = "definition";
        model_internal::_LastUpdatedValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLastUpdated);
        model_internal::_LastUpdatedValidator.required = true;
        model_internal::_LastUpdatedValidator.requiredFieldError = "LastUpdated is required";
        //model_internal::_LastUpdatedValidator.source = model_internal::_instance;
        //model_internal::_LastUpdatedValidator.property = "LastUpdated";
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
            throw new Error(propertyName + " is not a data property of entity Item");
            
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
            throw new Error(propertyName + " is not a collection property of entity Item");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Item");

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
            throw new Error(propertyName + " does not exist for entity Item");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Item");
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
            throw new Error(propertyName + " does not exist for entity Item");
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
    public function get isSchoolAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isStudentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescriptionAvailable():Boolean
    {
        return true;
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
    public function get isSubcategoryAvailable():Boolean
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
    public function get isConfidenceintervalAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBoundaryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVariablesAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCategoryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFieldAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLayerAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAliasAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVariablecategoryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRankAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTractAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isItemAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNAAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCategoryIDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDefinitionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLastUpdatedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAddressAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isZipAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPhoneAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEmailAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLatitudeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLongitudeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDistanceAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnSchool():void
    {
        if (model_internal::_schoolIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSchool = null;
            model_internal::calculateSchoolIsValid();
        }
    }
    public function invalidateDependentOnStudents():void
    {
        if (model_internal::_studentsIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfStudents = null;
            model_internal::calculateStudentsIsValid();
        }
    }
    public function invalidateDependentOnDescription():void
    {
        if (model_internal::_descriptionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescription = null;
            model_internal::calculateDescriptionIsValid();
        }
    }
    public function invalidateDependentOnVariables():void
    {
        if (model_internal::_variablesIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfVariables = null;
            model_internal::calculateVariablesIsValid();
        }
    }
    public function invalidateDependentOnCategoryID():void
    {
        if (model_internal::_categoryIDIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCategoryID = null;
            model_internal::calculateCategoryIDIsValid();
        }
    }
    public function invalidateDependentOnDefinition():void
    {
        if (model_internal::_definitionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDefinition = null;
            model_internal::calculateDefinitionIsValid();
        }
    }
    public function invalidateDependentOnLastUpdated():void
    {
        if (model_internal::_LastUpdatedIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLastUpdated = null;
            model_internal::calculateLastUpdatedIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get schoolStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get schoolValidator() : StyleValidator
    {
        return model_internal::_schoolValidator;
    }

    model_internal function set _schoolIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_schoolIsValid;         
        if (oldValue !== value)
        {
            model_internal::_schoolIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schoolIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get schoolIsValid():Boolean
    {
        if (!model_internal::_schoolIsValidCacheInitialized)
        {
            model_internal::calculateSchoolIsValid();
        }

        return model_internal::_schoolIsValid;
    }

    model_internal function calculateSchoolIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_schoolValidator.validate(model_internal::_instance.school)
        model_internal::_schoolIsValid_der = (valRes.results == null);
        model_internal::_schoolIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::schoolValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::schoolValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get schoolValidationFailureMessages():Array
    {
        if (model_internal::_schoolValidationFailureMessages == null)
            model_internal::calculateSchoolIsValid();

        return _schoolValidationFailureMessages;
    }

    model_internal function set schoolValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_schoolValidationFailureMessages;

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
            model_internal::_schoolValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schoolValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get studentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get studentsValidator() : StyleValidator
    {
        return model_internal::_studentsValidator;
    }

    model_internal function set _studentsIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_studentsIsValid;         
        if (oldValue !== value)
        {
            model_internal::_studentsIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "studentsIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get studentsIsValid():Boolean
    {
        if (!model_internal::_studentsIsValidCacheInitialized)
        {
            model_internal::calculateStudentsIsValid();
        }

        return model_internal::_studentsIsValid;
    }

    model_internal function calculateStudentsIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_studentsValidator.validate(model_internal::_instance.students)
        model_internal::_studentsIsValid_der = (valRes.results == null);
        model_internal::_studentsIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::studentsValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::studentsValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get studentsValidationFailureMessages():Array
    {
        if (model_internal::_studentsValidationFailureMessages == null)
            model_internal::calculateStudentsIsValid();

        return _studentsValidationFailureMessages;
    }

    model_internal function set studentsValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_studentsValidationFailureMessages;

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
            model_internal::_studentsValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "studentsValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get descriptionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descriptionValidator() : StyleValidator
    {
        return model_internal::_descriptionValidator;
    }

    model_internal function set _descriptionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descriptionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descriptionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descriptionIsValid():Boolean
    {
        if (!model_internal::_descriptionIsValidCacheInitialized)
        {
            model_internal::calculateDescriptionIsValid();
        }

        return model_internal::_descriptionIsValid;
    }

    model_internal function calculateDescriptionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descriptionValidator.validate(model_internal::_instance.description)
        model_internal::_descriptionIsValid_der = (valRes.results == null);
        model_internal::_descriptionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descriptionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descriptionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descriptionValidationFailureMessages():Array
    {
        if (model_internal::_descriptionValidationFailureMessages == null)
            model_internal::calculateDescriptionIsValid();

        return _descriptionValidationFailureMessages;
    }

    model_internal function set descriptionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descriptionValidationFailureMessages;

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
            model_internal::_descriptionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get layeridStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get subcategoryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get coverageStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get sourceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get yearStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get priorityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get statusStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get boundaryLabelStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get dataTypeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get securityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get disclaimerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get exclusionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get usertipStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get summaryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get confidenceintervalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get boundaryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get variablesStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get variablesValidator() : StyleValidator
    {
        return model_internal::_variablesValidator;
    }

    model_internal function set _variablesIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_variablesIsValid;         
        if (oldValue !== value)
        {
            model_internal::_variablesIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "variablesIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get variablesIsValid():Boolean
    {
        if (!model_internal::_variablesIsValidCacheInitialized)
        {
            model_internal::calculateVariablesIsValid();
        }

        return model_internal::_variablesIsValid;
    }

    model_internal function calculateVariablesIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_variablesValidator.validate(model_internal::_instance.variables)
        model_internal::_variablesIsValid_der = (valRes.results == null);
        model_internal::_variablesIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::variablesValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::variablesValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get variablesValidationFailureMessages():Array
    {
        if (model_internal::_variablesValidationFailureMessages == null)
            model_internal::calculateVariablesIsValid();

        return _variablesValidationFailureMessages;
    }

    model_internal function set variablesValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_variablesValidationFailureMessages;

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
            model_internal::_variablesValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "variablesValidationFailureMessages", oldValue, value));
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

    [Bindable(event="propertyChange")]   
    public function get fieldStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get layerStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get aliasStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get variablecategoryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rankStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get TractStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get itemStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get NAStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get categoryIDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get categoryIDValidator() : StyleValidator
    {
        return model_internal::_categoryIDValidator;
    }

    model_internal function set _categoryIDIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_categoryIDIsValid;         
        if (oldValue !== value)
        {
            model_internal::_categoryIDIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categoryIDIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get categoryIDIsValid():Boolean
    {
        if (!model_internal::_categoryIDIsValidCacheInitialized)
        {
            model_internal::calculateCategoryIDIsValid();
        }

        return model_internal::_categoryIDIsValid;
    }

    model_internal function calculateCategoryIDIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_categoryIDValidator.validate(model_internal::_instance.categoryID)
        model_internal::_categoryIDIsValid_der = (valRes.results == null);
        model_internal::_categoryIDIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::categoryIDValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::categoryIDValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get categoryIDValidationFailureMessages():Array
    {
        if (model_internal::_categoryIDValidationFailureMessages == null)
            model_internal::calculateCategoryIDIsValid();

        return _categoryIDValidationFailureMessages;
    }

    model_internal function set categoryIDValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_categoryIDValidationFailureMessages;

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
            model_internal::_categoryIDValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "categoryIDValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get definitionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get definitionValidator() : StyleValidator
    {
        return model_internal::_definitionValidator;
    }

    model_internal function set _definitionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_definitionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_definitionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "definitionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get definitionIsValid():Boolean
    {
        if (!model_internal::_definitionIsValidCacheInitialized)
        {
            model_internal::calculateDefinitionIsValid();
        }

        return model_internal::_definitionIsValid;
    }

    model_internal function calculateDefinitionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_definitionValidator.validate(model_internal::_instance.definition)
        model_internal::_definitionIsValid_der = (valRes.results == null);
        model_internal::_definitionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::definitionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::definitionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get definitionValidationFailureMessages():Array
    {
        if (model_internal::_definitionValidationFailureMessages == null)
            model_internal::calculateDefinitionIsValid();

        return _definitionValidationFailureMessages;
    }

    model_internal function set definitionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_definitionValidationFailureMessages;

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
            model_internal::_definitionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "definitionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get LastUpdatedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get LastUpdatedValidator() : StyleValidator
    {
        return model_internal::_LastUpdatedValidator;
    }

    model_internal function set _LastUpdatedIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_LastUpdatedIsValid;         
        if (oldValue !== value)
        {
            model_internal::_LastUpdatedIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LastUpdatedIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get LastUpdatedIsValid():Boolean
    {
        if (!model_internal::_LastUpdatedIsValidCacheInitialized)
        {
            model_internal::calculateLastUpdatedIsValid();
        }

        return model_internal::_LastUpdatedIsValid;
    }

    model_internal function calculateLastUpdatedIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_LastUpdatedValidator.validate(model_internal::_instance.LastUpdated)
        model_internal::_LastUpdatedIsValid_der = (valRes.results == null);
        model_internal::_LastUpdatedIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::LastUpdatedValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::LastUpdatedValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get LastUpdatedValidationFailureMessages():Array
    {
        if (model_internal::_LastUpdatedValidationFailureMessages == null)
            model_internal::calculateLastUpdatedIsValid();

        return _LastUpdatedValidationFailureMessages;
    }

    model_internal function set LastUpdatedValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_LastUpdatedValidationFailureMessages;

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
            model_internal::_LastUpdatedValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LastUpdatedValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get addressStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get zipStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get phoneStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get emailStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get latitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get longitudeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get distanceStyle():com.adobe.fiber.styles.Style
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
            case("school"):
            {
                return schoolValidationFailureMessages;
            }
            case("students"):
            {
                return studentsValidationFailureMessages;
            }
            case("description"):
            {
                return descriptionValidationFailureMessages;
            }
            case("variables"):
            {
                return variablesValidationFailureMessages;
            }
            case("categoryID"):
            {
                return categoryIDValidationFailureMessages;
            }
            case("definition"):
            {
                return definitionValidationFailureMessages;
            }
            case("LastUpdated"):
            {
                return LastUpdatedValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
