namespace Yii;

class BaseYii
{
	/**
     * Returns a string representing the current version of the Yii framework.
     * @return string the version of Yii framework
     */
    public static function getVersion()
    {
        return "yiic 2.0.14-dev";
    }

	/**
     * Configures an object with the initial property values.
     * @param object $object the object to be configured
     * @param array $properties the property initial values given in terms of name-value pairs.
     * @return object the object itself
     */
    public static function configure($object,array properties)->object
    {
        if typeof $object == "object" && typeof properties == "array" {
            var name, value;
            for name, value in properties {
                let $object->{name} = value;
            }
        }
        return $object;
    }

    /**
     * Returns the public member variables of an object.
     * This method is provided such that we can get the public member variables of an object.
     * It is different from "get_object_vars()" because the latter will return private
     * and protected variables if it is called within the object itself.
     * @param object $object the object to be handled
     * @return array the public member variables of the object
     */
    public static function getObjectVars($object)->array
    {
        return get_object_vars($object);
    }
}