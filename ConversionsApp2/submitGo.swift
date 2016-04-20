//
//  submitGo.swift
//  ConversionsApp2
//
//  Created by Natalie Tuck on 3/15/16.
//  Copyright © 2016 Natalie Tuck. All rights reserved.
//

import Foundation

class ConvertPractice {
    var startingUnits = ""
    var endingUnits = ""
    var answer = 0.0

    var question: String {
        let units = ["centimeters","decimeters","kilometers","millimeters","meters"]
        let startingUnitIndex = Int(arc4random_uniform(UInt32(units.count)))
        let startingUnits = units[startingUnitIndex]
        var endingUnitIndex = Int(arc4random_uniform(UInt32(units.count)))
        while startingUnitIndex == endingUnitIndex {
            endingUnitIndex = Int(arc4random_uniform(UInt32(units.count)))
        }
        let endingUnits = units[endingUnitIndex]
        let quantity = Double(arc4random_uniform(UInt32(100)))
        calculateAnswer(quantity)
        self.startingUnits = startingUnits
        self.endingUnits = endingUnits
        return "Convert \(quantity) \(startingUnits) to \(endingUnits)"
        
        
    }
    
    func checkAnswer(userAnswer: Double) -> Bool {
        if userAnswer == self.answer {
            return true
        } else {
            return false
        }
    }
    
    private func calculateAnswer(quantity: Double) {
        if startingUnits == "centimeters" && endingUnits == "decimeters" {
            answer = (quantity) * 0.1
        }
        else if startingUnits == "centimeters" && endingUnits == "kilometers" {
            answer = (quantity) * 0.00001
        }
        else if startingUnits == "centimeters" && endingUnits == "millimeters" {
            answer = (quantity) * 10
        }
        else if startingUnits == "centimeters" && endingUnits == "meters" {
            answer = (quantity) * 0.01
        }
        else if startingUnits == "decimeters" && endingUnits == "centimeters" {
            answer = (quantity) * 10
        }
        else if startingUnits == "decimeters" && endingUnits == "kilometers" {
            answer = (quantity) * 0.0001
        }
        else if startingUnits == "decimeters" && endingUnits == "millimeters" {
            answer = (quantity) * 100
        }
        else if startingUnits == "decimeters" && endingUnits == "meters" {
            answer = (quantity) * 0.1
        }
        else if startingUnits == "kilometers" && endingUnits == "centimeters" {
            answer = (quantity) * 100000
        }
        else if startingUnits == "kilometers" && endingUnits == "decimeters" {
            answer = (quantity) * 10000
        }
        else if startingUnits == "kilometers" && endingUnits == "millimeters" {
            answer = (quantity) * 1000000
        }
        else if startingUnits == "kilometers" && endingUnits == "meters" {
            answer = (quantity) * 1000
        }
        else if startingUnits == "millimeters" && endingUnits == "centimeters" {
            answer = (quantity) * 0.1
        }
        else if startingUnits == "millimeters" && endingUnits == "decimeters" {
            answer = (quantity) * 0.01
        }
        else if startingUnits == "millimeters" && endingUnits == "kilometers" {
            answer = (quantity) * 0.000001
        }
        else if startingUnits == "millimeters" && endingUnits == "meters" {
            answer = (quantity) * 0.001
        }
        else if startingUnits == "meters" && endingUnits == "centimeters" {
            answer = (quantity) * 100
        }
        else if startingUnits == "meters" && endingUnits == "decimeters" {
            answer = (quantity) * 10
        }
        else if startingUnits == "meters" && endingUnits == "kilometers" {
            answer = (quantity) * 0.001
        }
        else if startingUnits == "meters" && endingUnits == "millimeters" {
            answer = (quantity) * 1000
        }
        
    }
    
}

