namespace Yii\Base;

class BaseObject implements Configurable
{
	public static function className()->string
	{
		return get_called_class();
	}

    /**
     * Constructor.
     *
     * The default implementation does two things:
     *
     * - Initializes the object with the given configuration `$config`.
     * - Call [[init()]].
     *
     * If this method is overridden in a child class, it is recommended that
     *
     * - the last parameter of the constructor is a configuration array, like `$config` here.
     * - call the parent implementation at the end of the constructor.
     *
     * @param array $config name-value pairs that will be used to initialize the object properties
     */
	public function __construct(array! config=[])
	{
		var name,value;
		if(!empty(config)) {
			for name, value in config {
				let this->{name} = value;
			}
		}
		this->init();
	}

	public function init()
	{
	}

	/**
	 * Returns a value indicating whether a method is defined.
	 *
	 * The default implementation is a call to php function `method_exists()`.
	 * You may override this method when you implemented the php magic method `__call()`.
	 * @param string $name the method name
	 * @return bool whether the method is defined
	 */
	public function hasMethod(string name) -> boolean
	{
		return method_exists(this, name);
	}
}