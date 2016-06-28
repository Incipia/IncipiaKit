//
//  IncipiaKitTests.swift
//  IncipiaKitTests
//
//  Created by Gregory Klein on 6/27/16.
//  Copyright © 2016 Incipia. All rights reserved.
//

import XCTest
import IncipiaKit

@testable import IncipiaKit

class IncipiaKitTests: XCTestCase {
	
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
	
	func testExample() {
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct results.
	}
	
	func testColorHexString() {
		let redHexString = "#FF0000"
		let redColor = UIColor(hexString: redHexString)
		
		if let hexString = redColor.hexString {
			XCTAssertEqual(hexString, redHexString)
		}
	}
	
	func testColorHexInit() {
		let redColor = UIColor(hexString: "#FF0000")
		if let components = redColor.cgColor.components {
			let r = Float(components[0])
			let g = Float(components[1])
			let b = Float(components[2])
			
			XCTAssertEqual(r, 1.0)
			XCTAssertEqual(g, 0)
			XCTAssertEqual(b, 0)
		}
	}
	
	func testPerformanceExample() {
		// This is an example of a performance test case.
		self.measure {
			// Put the code you want to measure the time of here.
		}
	}
	
}
