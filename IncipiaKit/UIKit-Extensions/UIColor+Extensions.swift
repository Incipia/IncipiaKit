//
//  UIColor+Extensions.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension UIColor
{
	convenience init(hexString: String) {
		let hex = hexString.trimmingCharacters(in: NSCharacterSet.alphanumerics().inverted)
		var int = UInt32()
		
		Scanner(string: hex).scanHexInt32(&int)
		
		let a, r, g, b: UInt32
		switch hex.characters.count {
		case 3: // RGB (12-bit)
			(a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
		case 6: // RGB (24-bit)
			(a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
		case 8: // ARGB (32-bit)
			(a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
		default:
			(a, r, g, b) = (1, 1, 1, 0)
		}
		
		let red = CGFloat(r) / 255
		let green = CGFloat(g) / 255
		let blue = CGFloat(b) / 255
		let alpha = CGFloat(a) / 255
		
		self.init(red: red, green: green, blue: blue, alpha: alpha)
	}
	
	var hexString: String? {
		guard let components = cgColor.components else { return nil }
		
		let r = Float(components[0])
		let g = Float(components[1])
		let b = Float(components[2])
		
		return String(format: "#%02lX%02lX%02lX", lroundf(r * 255), lroundf(g * 255), lroundf(b * 255))
	}
}
