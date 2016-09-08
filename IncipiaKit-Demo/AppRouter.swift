//
//  AppRouter.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 7/9/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import UIKit
import IncipiaKit

class AppRouter {
	let window: UIWindow
	
	let viewControllerA = ViewControllerA.instantiate(fromStoryboard: "Main")
	let viewControllerB = ViewControllerB.instantiate(fromStoryboard: "Main")
	let rootNavController = UINavigationController()
	
	init(window: UIWindow) {
		self.window = window
		_configure(window: window)
		
		viewControllerA.title = "Hello"
		
		rootNavController.makeNavBarTransparent()
		viewControllerA.nextButtonPressed = _showViewControllerB
		
		let appearance = UIBarButtonItem.appearance()
		appearance.tintColor = UIColor.white
	}
	
	private func _configure(window: UIWindow) {
		rootNavController.viewControllers = [viewControllerA]
		window.rootViewController = rootNavController
		window.makeKeyAndVisible()
	}
	
	private func _showViewControllerB() {
		rootNavController.pushViewController(viewControllerB, animated: true)
	}
}
