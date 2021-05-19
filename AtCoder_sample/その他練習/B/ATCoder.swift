//
//  Atcoder.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/09.
//

// https://atcoder.jp/contests/abc122/tasks/abc122_b

import Foundation

func atcoder() {
    let S = readLine()!
    let words = ["A","C","G","T"]

    var max = 0
    var count = 0
    for s in S {
        if words.contains(String(s)) {
            count += 1
            if count > max {
                max = count
            }
        } else {
            count = 0
        }
    }
    print(max)
}
