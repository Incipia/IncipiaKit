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
		
//		let testView = UIView()
//		testView.backgroundColor = .clearColor()
//		
//		let label = UILabel()
//		label.text = "HELLO!"
//		label.font = UIFont.boldSystemFontOfSize(24)
//		label.kerning = 5.0
//		
//		testView.addSubview(label)
//		label.translatesAutoresizingMaskIntoConstraints = false
//		label.centerXAnchor.constraintEqualToAnchor(testView.centerXAnchor).active = true
//		label.centerYAnchor.constraintEqualToAnchor(testView.centerYAnchor).active = true
		
//		_container.addAndFill(subview: testView)
		
//		let border = _container.addBorder(withSize: 5, toEdge: .Top, padding: 10)
//		border?.backgroundColor = .orangeColor()
		
//	   _container.addBordersToAllEdges(borderSize: 5).forEach { $0.backgroundColor = .redColor() }
//		_container.addBorder(withSize: 10, toEdge: UIRectEdge.Left)?.backgroundColor = .blueColor()
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

