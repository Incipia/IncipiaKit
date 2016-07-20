//
//  ViewController.swift
//  IncipiaKit-Demo
//
//  Created by Gregory Klein on 7/8/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import UIKit
import IncipiaKit

class ViewControllerA: UIViewController {

	@IBOutlet private var _container: UIView!
	
	var nextButtonPressed: () -> Void = {}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let testView = UIView()
		testView.backgroundColor = .redColor()
		
		_container.addAndFill(subview: testView)
	}
	
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		updateLeftBarButtonItem(withImageName: "filters", action: #selector(ViewControllerA._next))
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func _next() {
	}
	
	@IBAction private func _nextButtonPressed() {
		nextButtonPressed()
	}
}

