//
//  MathParserTests.swift
//  MathParserTests
//
//  Created by zhaozq on 2018/6/1.
//  Copyright © 2018年 zhao. All rights reserved.
//

import XCTest
@testable import MathParser

class MathParserTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let expression = "1234.1234*1238746-1234(-12)^2" //1234769.1234
        let result = evaluateExpression(expression)
        let expected = 1528587729.2564//1529565134839.26
        if let res = result {
            //XCTAssertEqual(res, expected)
            XCTAssertEqual(res, expected, accuracy:0.0001, "failed")
        }
        else
        {
            XCTFail("result is nil")
        }
    }
    
    func testPlus() {
        let expression = "100.2+23.3"
        let result = evaluateExpression(expression)
        let expected = 123.5
        if let res = result {
            XCTAssertEqual(res, expected)
        }
        else
        {
            XCTFail("result is nil")
        }
    }
    
    func testMinus() {
        let expression = "123.5-23.3"
        let result = evaluateExpression(expression)
        let expected = 100.2
        if let res = result {
            XCTAssertEqual(res, expected)
        }
        else
        {
            XCTFail("result is nil")
        }
    }
    
    func testCase12() {
        let expression = "100*10.00%*3/12"
        let result = evaluateExpression(expression)
        let expected = 2.5
        if let res = result {
            XCTAssertEqual(res, expected)
        }
        else
        {
            XCTFail("result is nil")
        }
    }
    
    func testCase22() {
        let expression = "100*10.00%*3/12+100+100*10.00%*3/12"
        let result = evaluateExpression(expression)
        let expected = 100*0.1*3/12+100+100*0.1*3/12
        if let res = result {
            XCTAssertEqual(res, expected)
        }
        else
        {
            XCTFail("result is nil")
        }
    }
    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//
//            let expressions = ["1234769.1234*1238746-1234(-12)^2",
//                               "2+1-2*6+6/3",
//                               "3123234×91243+7^3+32!÷16-asinh(cos(√(2,π+e)))"] //TODO: add more
//            for _ in 0..<100
//            {
//                for exp in expressions {
//                    let _ = evaluateExpression(exp)
//                }
//            }
//        }
//    }
    
}
