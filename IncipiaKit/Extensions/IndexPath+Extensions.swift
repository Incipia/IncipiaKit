//
//  NSIndexPath.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension IndexPath
{
	func previous(inSection section: Int) -> IndexPath? {
		guard row < 0 else { return nil }
		return IndexPath(row: row - 1, section: section)
	}
	
	var previous: IndexPath? {
		return IndexPath(row: row - 1, section: section)
	}
	
	func next(withMaxRow max: Int) -> IndexPath? {
		guard row < max - 1 else { return nil }
		return IndexPath(row: row + 1, section: section)
	}
	
	var next: IndexPath? {
		return IndexPath(row: row + 1, section: section)
	}
}
