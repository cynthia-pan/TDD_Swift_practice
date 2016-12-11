//
//  Score.swift
//  TestScoreForBowling
//
//  Created by Cynthia on 2016/12/11.
//  Copyright © 2016年 Cynthia. All rights reserved.
//

import Foundation

class Score {
    let record: String
    var score: Int
    
    
    init(inputRecord: String) {
        record = inputRecord
        score = 0
    }
    
    func getScore() -> Int {
        var count = 20
        var previous = ""
        var next = 0
        var next2 = 0
        for s in record.characters {
            switch String(s) {
                case "X":
                    score = score + 10 * (1 + next)
                    count -= 1
                    if count > 1 {
                        next = next2 + 1
                        next2 = 1
                    } else {
                        next = next2
                        next2 = 0
                    }
                case "-":
                    next = next2
                    next2 = 0
                case "/":
                    score = score + 10 - Int(previous)!
                    next += 1
                default:
                    let num = Int(String(s))!
                    if num > 0 && num < 10 {
                        if count > 0 {
                            score += num * (1 + next)
                        } else {
                            score += num
                        }
                        next = next2
                        next2 = 0
                    }
            }
            previous = String(s)
            print(score)
            count -= 1
        }
        
        return score
    }
}
