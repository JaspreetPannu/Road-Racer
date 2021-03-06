//
//  Helper.swift
//  Road Racer
//
//  Created by Jaspreet on 2020-06-19.
//  Copyright © 2020 Jaspreet. All rights reserved.
//

import UIKit

struct ColliderType {
    static let CAR_COLLIDER: UInt32 = 0
    static let ITEM_COLLIDER: UInt32 = 1
    static let ITEM_COLLIDER_1: UInt32 = 2
}


class Helper: NSObject {
    
    func randomBetweenTwoNumbers(firstNumber: CGFloat, secondNumber: CGFloat) -> CGFloat {
        return CGFloat(arc4random())/CGFloat(UINT32_MAX) * abs(firstNumber - secondNumber) + min(firstNumber, secondNumber)
    }
}

class Settings {
    static let sharedInstance = Settings()
    
    private init() {}
    var highScore = 0
    var gameScore = 0
    
    var audioSetting = true
}
