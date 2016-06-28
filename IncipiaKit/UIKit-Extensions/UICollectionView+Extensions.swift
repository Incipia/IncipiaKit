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
	var lastIndexPath: IndexPath? {
		var ip: IndexPath?
		let numberOfRows = numberOfItems(inSection: 0)
		if numberOfRows > 0 {
			ip = IndexPath(row: numberOfRows - 1, section: 0)
		}
		return ip
	}
	
	func deselectAllItems(animated: Bool = false)
	{
		indexPathsForSelectedItems()?.forEach { ip in
			deselectItem(at: ip, animated: animated)
		}
	}
	
	func scrollToBottom(animated: Bool = true)
	{
		guard let indexPath = lastIndexPath else { return }
		scrollToItem(at: indexPath, at: .centeredVertically, animated: animated)
	}
	
	func scrollToBottomWithDuration(duration: Double, completion: ((finished: Bool) -> ())?)
	{
		UIView.animate(withDuration: duration, animations: { () -> Void in
			guard let ip = self.lastIndexPath else { return }
			self.scrollToItem(at: ip, at: .bottom, animated: false)
			}, completion: completion)
	}
}
