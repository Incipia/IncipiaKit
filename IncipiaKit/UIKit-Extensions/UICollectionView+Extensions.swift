//
//  UICollectionView+Extensions.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension UICollectionView
{
	var lastIndexPath: NSIndexPath? {
		var ip: NSIndexPath?
		let numberOfRows = numberOfItemsInSection(0)
		if numberOfRows > 0 {
			ip = NSIndexPath(forRow: numberOfRows - 1, inSection: 0)
		}
		return ip
	}
	
	func deselectAllItems(animated: Bool = false)
	{
		for indexPath in self.indexPathsForSelectedItems() ?? [] {
			self.deselectItemAtIndexPath(indexPath, animated: animated)
		}
	}
	
	func scrollToBottom(animated: Bool = true)
	{
		if let ip = lastIndexPath {
			scrollToItemAtIndexPath(ip, atScrollPosition: UICollectionViewScrollPosition.CenteredVertically, animated: animated)
		}
	}
	
	func scrollToBottomWithDuration(duration: Double, completion: ((finished: Bool) -> ())?)
	{
		UIView.animateWithDuration(duration, animations: { () -> Void in
			
			if let ip = self.lastIndexPath {
				self.scrollToItemAtIndexPath(ip, atScrollPosition: .Bottom, animated: false)
			}
			}, completion: completion)
	}
}
