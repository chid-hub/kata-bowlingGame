//
//  BowlingGameViewModel.swift
//  BowlingGameKATA
//
//  Created by  on 14/12/23.
//

import Foundation

// Protocol
protocol BowlingGameViewModelProtocol {
    func score() -> Int
}

class BowlingGameViewModel: BowlingGameViewModelProtocol {
        
   private var model: BowlingGameModel

    init(bowlingGameModel: BowlingGameModel) {
        self.model = bowlingGameModel
    }

    func roll(_ pins: Int) {
        model.roll(pins: pins)
    }

    func score() -> Int {
        return model.score()
    }
    
    func getAllFrames() -> [Frame] {
        return model.frames
    }

}
