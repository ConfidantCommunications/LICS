/*
LICS Framework
Copyright (c) 2010 Conrad Winchester <conrad@dz015.com>

Your reuse is governed by the Creative Commons Attribution 3.0 License
*/
package com.dz015.lics.interfaces
{

	public interface IInterCoreRouter
	{
		function registerCoreMediator(mediator:ICoreMediator):void;
		function removeCoreMediator(mediatorName:String):void;
		function setTypedInterCoreNotificationArgumentTypes(notificationName:String,...signalArgumentTypes):void;
		function sendInterCoreNotification(notificationName:String, body:Object=null, type:String=null):void;
		function sendTypedInterCoreNotification(notificationName:String,...signalArguments):void;
	}

}