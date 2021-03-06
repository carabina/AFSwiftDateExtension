//
//  AppDelegate.swift
//  NSDateExtension
//
//  Created by Andrea Finollo on 17/05/15.
//  Copyright (c) 2015 CloudInTouch. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let date = NSDate()
        
        let addMonth = NSDate.dateByAddingCalendarComponent(timeUnitMeasure: .Months)
        
        let newDate = addMonth(date: date, value: 2)
        
        let arrayDate = [NSDate(),NSDate.dateByAddingCalendarComponent(timeUnitMeasure: .Days)(date: NSDate(),value: 4),newDate]
        
        let mapArray = arrayDate.map{addMonth(date:$0!,value:3)}
        
        let dateMinusOneDay = date - 1.days
        
        let d1 = NSDate.dateWithTime(hour: 22)
        let d2 = NSDate.dateWithTime(hour: 22, minutes:10)
        let d3 = NSDate.dateWithComponents(year: 1978, month: 5, day: 24, hour: 12);
        
        let string = newDate?.textTimeAgoFromNow()
        let string2 = dateMinusOneDay?.textTimeAgoFromNow()
        let string3 = d3?.textTimeAgoFromNow()
        
        
        let val = d3![.Months]
        
        let tupla = d3![.Hours,.Days,.Months]
        println("Hour:\(tupla.hour!) Days:\(tupla.day!) Month:\(tupla.month!)")
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

