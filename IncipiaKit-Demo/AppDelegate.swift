//
//  AppDelegate.swift
//  IncipiaKit-Demo
//
//  Created by Gregory Klein on 7/8/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var router: AppRouter?
	
	func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
		window = UIWindow()
		router = AppRouter(window: window!)
		return true
	}
}

