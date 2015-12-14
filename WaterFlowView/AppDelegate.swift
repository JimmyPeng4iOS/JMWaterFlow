//
//  AppDelegate.swift
//  JMWaterFlow
//
//  Created by Jimmy on 15/10/11.
//  Copyright © 2015年 Jimmy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate{

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        window?.rootViewController = WaterFlowViewController()
        
        window?.makeKeyAndVisible()
        
        return true
    }


}

