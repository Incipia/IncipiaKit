//
//  NSBundle+Extensions.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension Bundle
{
	class func mainInfoDictionary(key: CFString) -> String? {
		return main().infoDictionary?[key as String] as? String
	}
	
	static var appDisplayName: String? {
		return mainInfoDictionary(key: kCFBundleNameKey)
	}
}
