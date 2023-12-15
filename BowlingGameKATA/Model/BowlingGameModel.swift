//
//  BowlingGameModel.swift
//  BowlingGameKATA
//
//  Created by  on 14/12/23.
//

import Foundation

class BowlingGameModel{
    
    var rolls: [Int] = []
    var frames: [Frame] = []
    
    func roll(pins: Int) {
        rolls.append(pins)
        updateFrames()
    }
    
    private func updateFrames() {
        frames = []
        var index = 0
        
        for _ in 0..<10 { // 10 frames in a game
            guard index < rolls.count else {
                break // Stop processing frames if there are not enough rolls
            }
            
            let firstRoll = rolls[index]
            
            if firstRoll == 10 { // Strike
                frames.append(StrikeFrameModel(rolls: rolls, staringIndex: index))
                index += 1
            } else {
                guard index + 1 < rolls.count else {
                    break // Stop processing frames if there are not enough rolls
                }
                
                let secondRoll = rolls[index + 1]
                
                if firstRoll + secondRoll == 10 { // Spare
                    frames.append(SpareFrameModel(rolls: rolls, staringIndex: index))
                } else {
                    frames.append(OpenFrameModel(rolls: rolls, staringIndex: index))
                }
                
                index += 2
            }
        }
    }
    
    
    func score() -> Int {
        var total = 0
        for frame in frames {
            total += frame.score()
        }
        return total
    }
}
