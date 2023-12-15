//
//  OpenFrame.swift
//  BowlingGameKATA
//
//  Created by  on 14/12/23.
//

import Foundation

class OpenFrameModel: Frame {
    
   let rolls: [Int]
   let startingRoll: Int

    init(rolls: [Int], staringIndex: Int) {
      self.rolls = rolls
      self.startingRoll = staringIndex
    }

     func score() -> Int {
        return rolls[startingRoll] + rolls[startingRoll + 1]
    }

     func frameSize() -> Int {
        return 2
    }
}
