//
//  CountABC.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/09.
//

// https://atcoder.jp/contests/abc150/tasks/abc150_b

// String.rangeの使い方

import Foundation

func countABC() {
    _ = Int(readLine()!)!
    var S = readLine()!
    
    var count = 0
    while let range = S.range(of: "ABC") {
        count += 1
        S.removeSubrange(range)
    }
    print(count)
}
