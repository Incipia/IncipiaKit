//
//  UIImage+Extensions.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension UIImage
{
	class func convertGradientToImage(colors: [UIColor], frame: CGRect) -> UIImage
	{
		// start with a CAGradientLayer
		let gradientLayer = CAGradientLayer()
		gradientLayer.frame = frame
		
		// add colors as CGCologRef to a new array and calculate the distances
		var colorsRef : [CGColor] = []
		var locations : [NSNumber] = []
		
		for i in 0 ... colors.count-1 {
			colorsRef.append(colors[i].cgColor as CGColor)
			locations.append(Float(i)/Float(colors.count))
		}
		
		gradientLayer.colors = colorsRef
		gradientLayer.locations = locations
		
		// now build a UIImage from the gradient
		UIGraphicsBeginImageContext(gradientLayer.bounds.size)
		gradientLayer.render(in: UIGraphicsGetCurrentContext()!)
		let gradientImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		
		// return the gradient image
		return gradientImage!
	}
	
	class func image(withColor color: UIColor) -> UIImage
	{
		return image(withColor: color, size: CGSize(width: 1, height: 1))
	}
	
	class func image(withColor color: UIColor, size: CGSize) -> UIImage
	{
		let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
		UIGraphicsBeginImageContextWithOptions(size, false, 0)
		
		color.setFill()
		UIRectFill(rect)
		
		let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext()
		
		return image
	}
	
	func correctlyOriented() -> UIImage
	{
		guard imageOrientation != .up else { return self }
		
		UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
		self.draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
		let normalizedImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
		UIGraphicsEndImageContext();
		
		return normalizedImage;
	}
}
