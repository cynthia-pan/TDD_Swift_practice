//
//  ScoreForBowlingTest.swift
//  ScoreForBowlingTest
//
//  Created by Cynthia on 2016/12/11.
//  Copyright © 2016年 Cynthia. All rights reserved.
//

import XCTest

class ScoreForBowlingTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testXScore() {
        let score = Score(inputRecord: "X")
        XCTAssertEqual(10, score.getScore())
    }
    
    func testZeroScore() {
        let score = Score(inputRecord: "-")
        XCTAssertEqual(0, score.getScore())
    }
    
    func testNumber1Score() {
        let score = Score(inputRecord: "1")
        XCTAssertEqual(1, score.getScore())
    }
    
    func testNumber3Score() {
        let score = Score(inputRecord: "3")
        XCTAssertEqual(3, score.getScore())
    }
    
    func testNumber10Score() {
        let score = Score(inputRecord: "3/")
        XCTAssertEqual(10, score.getScore())
    }
    
    func testTotalXScore() {
        let score = Score(inputRecord: "XXXXXXXXXXXX")
        XCTAssertEqual(300, score.getScore())
    }
    
    func testTotal90Score() {
        let score = Score(inputRecord: "9-9-9-9-9-9-9-9-9-9-")
        XCTAssertEqual(90, score.getScore())
    }

//    func testGetScoreWithoutSpaceScore() {
//        let score = Score(inputRecord: "5/5/5/5/5/5/5/5/5/5/5")
//        XCTAssertEqual(105, score.getScore())
//    }
    
    func testGetScoreWithSpaceScore() {
        let score = Score(inputRecord: "5/5/5/5/5/5/5/5/5/5/5")
        XCTAssertEqual(150, score.getScore())
    }
    
    func testRandomScore() {
        let score = Score(inputRecord: "-55/5/5/5/5/5/5/5/X15")
        XCTAssertEqual(146, score.getScore())
    }
}
