//
//  UINavigationController+Extensions.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension UINavigationController
{
	override func makeNavBarTransparent() {
		navigationBar.makeTransparent()
	}
	
	override func resetNavBarTransparency() {
		navigationBar.resetTransparency()
	}
}
