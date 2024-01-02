//
//  Frames.swift
//  BowlingGameKATA
//
//  Created by on 02/01/24.
//

import Foundation

class Frames {
    private var frames: [Frame]

    init(frames: [Frame]) {
        self.frames = frames
    }

    func append(_ frame: Frame) {
        frames.append(frame)
    }

    func calculateScore() -> Int {
        return frames.reduce(0) { $0 + $1.score() }
    }
    
    func getAllFrames() -> [Frame] {
        return frames
    }
}
