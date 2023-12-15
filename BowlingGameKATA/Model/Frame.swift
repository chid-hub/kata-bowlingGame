//
//  Frame.swift
//  BowlingGameKATA
//
//  Created by on 14/12/23.
//

import Foundation

protocol Frame {
    var rolls: [Int] { get }
    var startingRoll: Int { get }

    func score() -> Int
    func frameSize() -> Int
    func firstBonusBall() -> Int
    func secondBonusBall() -> Int
}

extension Frame {
    
    func firstBonusBall() -> Int {
        let index = startingRoll + frameSize()
        guard index < rolls.count else {
            return 0
        }

        return rolls[index]
    }

    func secondBonusBall() -> Int {
        let index = startingRoll + frameSize() + 1
        guard index < rolls.count else {
            return 0
        }
        
        return rolls[index]
    }
}
