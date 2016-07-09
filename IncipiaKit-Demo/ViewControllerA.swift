//
//  ViewController.swift
//  IncipiaKit-Demo
//
//  Created by Gregory Klein on 7/8/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {

	var nextButtonPressed: () -> Void = {}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBAction private func _nextButtonPressed() {
		nextButtonPressed()
	}
}

