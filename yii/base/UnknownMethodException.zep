namespace Yii\Base;

class UnknownMethodException extends Exception
{
/**
     * @return string the user-friendly name of this exception
     */
    public function getName() -> string
    {
        return "Unknown Method";
    }
}