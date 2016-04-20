//
//  GenerateProblem.swift
//  ConversionsApp2
//
//  Created by Natalie Tuck on 3/23/16.
//  Copyright © 2016 Natalie Tuck. All rights reserved.
//

import Foundation

var question: String {
    let units = ["centimeters","decimeters","kilometers","millimeters","meters"]
    let startingUnitIndex = Int(arc4random_uniform(UInt32(units.count)))
    let startingUnits = units[startingUnitIndex]
    var endingUnitIndex = Int(arc4random_uniform(UInt32(units.count)))
    while startingUnitIndex == endingUnitIndex {
        endingUnitIndex = Int(arc4random_uniform(UInt32(units.count)))
    }
    let endingUnits = units[endingUnitIndex]
    let quantity = Int(arc4random_uniform(UInt32(100)))
    return "Convert \(quantity) \(startingUnits) to \(endingUnits)"
    
    
}

