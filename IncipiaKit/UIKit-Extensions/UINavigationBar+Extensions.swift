//
//  UINavigationBar+Extensions.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension UINavigationBar: TransparencyAdjustable
{
	func makeTransparent() {
		setBackgroundImage(UIImage(), forBarMetrics: .Default)
	}
	
	func resetTransparency() {
		setBackgroundImage(nil, forBarMetrics: .Default)
	}
}
