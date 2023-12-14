//
//  BowlingGameModel.swift
//  BowlingGameKATA
//
//  Created by  on 14/12/23.
//

import Foundation

class BowlingGameModel{
    
    private var rolls = [Int]()

    func roll(_ pins: Int) {
        rolls.append(pins)
    }

    func score() -> Int {
        return 0
    }
}
