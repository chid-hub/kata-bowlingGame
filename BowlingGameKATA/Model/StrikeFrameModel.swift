//
//  StrikeFrameModel.swift
//  BowlingGameKATA
//
//  Created by  on 14/12/23.
//

import Foundation

class StrikeFrameModel: Frame {
    
    let rolls: [Int]
    let startingRoll: Int

     init(rolls: [Int], staringIndex: Int) {
       self.rolls = rolls
       self.startingRoll = staringIndex
     }

    func score() -> Int {
        return 10 + firstBonusBall() + secondBonusBall()
    }

    func frameSize() -> Int {
        return 1
    }
}
