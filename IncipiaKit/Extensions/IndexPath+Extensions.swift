//
//  NSIndexPath.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension NSIndexPath
{
	func previous(inSection section: Int) -> NSIndexPath? {
		guard row < 0 else { return nil }
		return NSIndexPath(forRow: row - 1, inSection: section)
	}
	
	var previous: NSIndexPath? {
		return NSIndexPath(forRow: row - 1, inSection: section)
	}
	
	func next(withMaxRow max: Int) -> NSIndexPath? {
		guard row < max - 1 else { return nil }
		return NSIndexPath(forRow: row + 1, inSection: section)
	}
	
	var next: NSIndexPath? {
		return NSIndexPath(forRow: row + 1, inSection: section)
	}
}
