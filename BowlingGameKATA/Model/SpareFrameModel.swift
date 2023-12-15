//
//  SpareFrameModel.swift
//  BowlingGameKATA
//
//  Created by  on 14/12/23.
//

import Foundation

class SpareFrameModel: Frame, Rolls {
    
    let rolls: [Int]
    let startingRoll: Int

     init(rolls: [Int], staringIndex: Int) {
       self.rolls = rolls
       self.startingRoll = staringIndex
     }
    
     func score() -> Int {
        return 10 + firstBonusBall()
     }

    func frameSize() -> Int {
        return 2
    }
    
    func nextRollingScore() -> Int {
        let index = startingRoll + 1
        guard index < rolls.count else {
            return 0
        }
        return rolls[index]
    }
}
