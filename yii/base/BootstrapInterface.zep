namespace Yii\Base;

interface BootstrapInterface
{
	/**
     * Bootstrap method to be called during application bootstrap stage.
     * @param Application $app the application currently running
     */
    public function bootstrap(app);
}