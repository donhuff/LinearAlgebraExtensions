//
//  OperatorTests.swift
//  LinearAlgebraExtensions
//
//  Created by Damien Pontifex on 3/08/2014.
//  Copyright (c) 2014 Damien Pontifex. All rights reserved.
//

import XCTest
import Accelerate
import LinearAlgebraExtensions

class OperatorTests: XCTestCase {
	
	override func setUp() {
		super.setUp()
		// Put setup code here. This method is called before the invocation of each test method in the class.
	}
	
	override func tearDown() {
		// Put teardown code here. This method is called after the invocation of each test method in the class.
		super.tearDown()
	}
	
	func testMatrixMultiply() {
		let twoDArray = [[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]]
		var matrix = la_object_t.objectFromArray(twoDArray) as la_object_t
		var matrix2 = la_object_t.objectFromArray(twoDArray) as la_object_t
		
		var multiplyMatrix = matrix * matrix2
		
		XCTAssertEqual(la_matrix_cols(multiplyMatrix), 3, "Should have same dimension result")
		XCTAssertEqual(la_matrix_rows(multiplyMatrix), 3, "Should have same dimension result")
		
		var result = multiplyMatrix.toArray()
		
		XCTAssertEqual(result[0], 30, "Should have 30 as result of first element")
	}
	
	func testScalarAdd() {
		let twoDArray = [[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]]
		var matrix = la_object_t.objectFromArray(twoDArray)
		var matrix2 = la_object_t.objectFromArray(twoDArray)
		
		var sumMatrix = matrix + matrix2
	}
}
