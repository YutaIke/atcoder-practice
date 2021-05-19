//
//  Traveling.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/09.
//

// https://atcoder.jp/contests/abs/tasks/arc089_a
// マンハッタン距離(格子をジグザグに進んだときの距離)
// 時間以内に(最短距離で)たどり着くことができ、また辿り着いた後、残り時間が偶数時間であれば良い

import Foundation

typealias Plan = (t: Int, x: Int, y: Int)
func traveling() {
    let N = Int(readLine()!)!
    let plans: [Plan] = (0..<N).map { _ in readThreeInts() }
    
    var previous = Plan(t: 0, x: 0, y: 0)
    
    for plan in plans {
        let time = plan.t - previous.t
        let distance = abs(plan.x - previous.x) + abs(plan.y - previous.y)
        
        let remain = time - distance
        
        if remain < 0 || !remain.isMultiple(of: 2) {
            print("No")
            return
        }
        
        previous = plan
    }
    
    print("Yes")
}
