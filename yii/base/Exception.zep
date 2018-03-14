namespace Yii\Base;

class Exception extends \Exception
{
    /**
     * @return string the user-friendly name of this exception
     */
    public function getName() -> string
    {
        return "Exception";
    }

}