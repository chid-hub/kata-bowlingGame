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
        var total = 0
        var frameIndex = 0
        
        for _ in 0..<10 {
            if isStrike(frameIndex) {
                total += 10 + strikeBonus(frameIndex)
                frameIndex += 1
            } else if isSpare(frameIndex) {
                total += 10 + spareBonus(frameIndex)
                frameIndex += 2
            } else {
                total += openFrameScore(frameIndex)
                frameIndex += 2
            }
        }
        return total
    }
    
    private func isStrike(_ frameIndex: Int) -> Bool {
        return rolls[frameIndex] == 10
    }
    
    private func isSpare(_ frameIndex: Int) -> Bool {
        return openFrameScore(frameIndex) == 10
    }
    
    private func strikeBonus(_ frameIndex: Int) -> Int {
        return rolls[frameIndex + 1] + rolls[frameIndex + 2]
    }
    
    private func spareBonus(_ frameIndex: Int) -> Int {
        return rolls[frameIndex + 2]
    }
    
    private func openFrameScore(_ frameIndex: Int) -> Int {
        return rolls[frameIndex] + rolls[frameIndex + 1]
    }
    
}
