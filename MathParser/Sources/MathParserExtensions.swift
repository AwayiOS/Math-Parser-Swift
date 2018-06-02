//
//  MathParserExtensions.swift
//  Math Parser
//
//  Created by Vid Drobnic on 8/5/15.
//  Copyright (c) 2015 Vid Drobnic. All rights reserved.
//

import Foundation

extension String {
    func toDouble() -> Double? {
        return NSString(string: self).doubleValue
    }
}

extension Character {
    var isNumber: Bool {
        get {
            switch self {
            case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", ".":
                return true
            default:
                return false
            }
        }
    }
}

extension Dictionary where Key == String {
    func numberOfKeysStartingWith(_ searchString: String) -> Int {
        var count = 0
        for key in keys {
            if key.hasPrefix(searchString) {
                count += 1
            }
        }
        return count
    }
}

func radianToDegree(_ radian: Double) -> Double {
    return radian / Double.pi * 180.0
}

func degreeToRadian(_ degree: Double) -> Double {
    return degree / 180.0 * Double.pi
}
