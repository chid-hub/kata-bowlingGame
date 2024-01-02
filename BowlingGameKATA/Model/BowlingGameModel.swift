//
//  BowlingGameModel.swift
//  BowlingGameKATA
//
//  Created by  on 14/12/23.
//

import Foundation

class BowlingGameModel{
    
    var rolls: [Int] = []
    var frames: Frames = Frames(frames: [])
    
    func roll(pins: Int) {
        rolls.append(pins)
        updateFrames()
    }
    
    fileprivate func isSpare(_ firstRoll: Int, _ secondRoll: Int) -> Bool {
        return firstRoll + secondRoll == AppConstants.pinsPerFrame
    }
    
    fileprivate func isStrike(_ firstRoll: Int) -> Bool {
        return firstRoll == AppConstants.pinsPerFrame
    }
    
    private func updateFrames() {
        frames = Frames(frames: [])
        var index = 0
        
        for _ in 0..<AppConstants.maxFrames { // 10 frames in a game
            guard index < rolls.count else { break } // Stop processing frames if there are not enough rolls
            
            let firstRoll = rolls[index]
            
            if isStrike(firstRoll) {
                frames.append(StrikeFrameModel(rolls: rolls, staringIndex: index))
                index += 1
                continue
            }
            
            guard index + 1 < rolls.count else { break } // Stop processing frames if there are not enough rolls
            
            let secondRoll = rolls[index + 1]
            
            if isSpare(firstRoll, secondRoll) {
                frames.append(SpareFrameModel(rolls: rolls, staringIndex: index))
            } else {
                frames.append(OpenFrameModel(rolls: rolls, staringIndex: index))
            }
            index += 2
        }
    }
    
    func resetGame() {
        rolls = []
        updateFrames()
    }
    
    
    func score() -> Int {
        return frames.calculateScore()
    }
}
