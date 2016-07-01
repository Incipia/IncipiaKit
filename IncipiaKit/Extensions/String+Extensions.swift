//
//  String+Extensions.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 6/28/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import Foundation

extension String
{
	var isValidEmail: Bool {
		let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
		let testCase = Predicate(format:"SELF MATCHES %@", emailRegEx)
		return testCase.evaluate(with: self)
	}
	
	var containsNumber: Bool {
		let numberRegEx = ".*[0-9]+.*"
		let testCase = Predicate(format:"SELF MATCHES %@", numberRegEx)
		return testCase.evaluate(with: self)
	}
	
	var isValidURL: Bool {
		guard let url = URL(string: self) else { return false }
		return UIApplication.shared().canOpenURL(url)
	}
	
	var trimmed: String {
		let whitespaceCharacters = NSCharacterSet.whitespacesAndNewlines()
		return self.trimmingCharacters(in: whitespaceCharacters)
	}
	
	func width(usingFont font: UIFont) -> CGFloat {
		let constraintRect = CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
		let attributes = [NSFontAttributeName : font]
		let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
		return boundingBox.width
	}
}
