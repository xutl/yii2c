namespace Yii\Base;

class InvalidCallException extends Exception
{
	/**
     * @return string the user-friendly name of this exception
     */
    public function getName() -> string
    {
        return "Invalid Call";
    }
}