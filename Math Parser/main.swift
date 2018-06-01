//
//  main.swift
//  Math Parser
//
//  Created by Vid Drobnic on 8/4/15.
//  Copyright (c) 2015 Vid Drobnic. All rights reserved.
//

import Foundation

//let expression = "2+1-(2*6)"//"3123234×91243+7^3+32!÷16-asinh(cos(√(2,π+e)))"
let expression = "1234769.1234*1238746-1234(-12)^2" //1529565134839.26
let start = NSDate.timeIntervalSinceReferenceDate
let result = evaluateExpression(expression, MathParserAngleUnit.Degrees)
let end = NSDate.timeIntervalSinceReferenceDate

let difference = Double(end) - Double(start)

if let res = result {
    print("\(expression) = \(String(describing: res))\nTime: \(difference * 1000)ms")
}
else
{
    print("Failed")
}
