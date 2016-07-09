//
//  ViewControllerB.swift
//  IncipiaKit
//
//  Created by Gregory Klein on 7/9/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {
	// MARK: - Overridden
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		removeLeftBarItem()
	}
	
	func backButtonPressed() {
		navigationController?.popViewControllerAnimated(true)
	}
}
