//
//  UIViewController+Extensions.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension UIViewController
{
	func makeNavBarTransparent()
	{
		navigationController?.navigationBar.makeTransparent()
	}
	
	func makeNavBarShadowTransparent()
	{
		navigationController?.navigationBar.shadowImage = UIImage()
	}
	
	func resetNavBarTransparency()
	{
		navigationController?.navigationBar.resetTransparency()
	}
	
	func resetNavBarShadow()
	{
		navigationController?.navigationBar.shadowImage = nil
	}
}
