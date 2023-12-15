//
//  BowlingGameKATATests.swift
//  BowlingGameKATATests
//
//  Created by  on 14/12/23.
//

import XCTest
@testable import BowlingGameKATA

final class BowlingGameKATATests: XCTestCase {

    var bowlingGame: BowlingGameViewModel!
    override func setUp() {
        super.setUp()
        let model = BowlingGameModel()
        bowlingGame = BowlingGameViewModel(bowlingGameModel: model)
    }
    // Test case: all strikes
    func testAllStrikes() {
         for _ in 0..<12 {
             bowlingGame.roll(10)
         }
         XCTAssertEqual(bowlingGame.score(), 300)
     }
    // Test case: all spares
    func testAllSpares() {
        for _ in 0...10 {
            bowlingGame.roll(5)
            bowlingGame.roll(5)
        }
        XCTAssertEqual(bowlingGame.score(), 150)
    }
    // Test case: all miss
    func testAllMisses() {
        for _ in 0...10 {
            bowlingGame.roll(0)
            bowlingGame.roll(0)
        }
        XCTAssertEqual(bowlingGame.score(), 0)
    }
    // Test case: 10 pairs of 9 and miss
    func testPairsOfNineAndMisses() {
        for _ in 1...10 {
            bowlingGame.roll(9)
            bowlingGame.roll(0)
        }
        XCTAssertEqual(bowlingGame.score(), 90)
    }
    // Test case: 10 pairs of 5 and spare, with a final 5
    func testPairsOfFiveAndSpareWithFinalFive() {
        for _ in 1...10 {
            bowlingGame.roll(5)
            bowlingGame.roll(5)
        }
        bowlingGame.roll(5)
        XCTAssertEqual(bowlingGame.score(), 150)
    }
    
}
