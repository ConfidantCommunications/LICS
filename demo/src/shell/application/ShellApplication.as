package shell.application
{
	import mx.events.FlexEvent;
	
	import shell.ShellNotification;
	import shell.facade.ShellFacade;
	
	import spark.components.Application;
	import spark.components.Button;
	
	public class ShellApplication extends Application
	{
		
		public static const CORE:String = "Shell";
		
		public var loadModuleAButton:Button;
		public var unloadModuleAButton:Button;
		public var loadModuleBButton:Button;
		public var unloadModuleBButton:Button;
		
		public function ShellApplication()
		{
			addEventListener(FlexEvent.CREATION_COMPLETE,onCreationComplete);
		}
		
		private function onCreationComplete(event:FlexEvent):void
		{
			ShellFacade.getInstance(CORE).startup(this);
		}
	}
}