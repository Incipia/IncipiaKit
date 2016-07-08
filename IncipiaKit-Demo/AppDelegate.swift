//
//  AppDelegate.swift
//  IncipiaKit-Demo
//
//  Created by Gregory Klein on 7/8/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import UIKit
import IncipiaKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		// Override point for customization after application launch.
		
		let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!
		let nc = UINavigationController(rootViewController: vc)
		
		nc.makeNavBarTransparent()
		nc.makeNavBarShadowTransparent()
		
		window = UIWindow()
		window?.rootViewController = nc
		window?.makeKeyAndVisible()
		
		return true
	}
}

