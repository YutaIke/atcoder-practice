//
//  hakuchumu.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/09.
//

// https://atcoder.jp/contests/abs/tasks/arc065_a
// 後ろから見ていくと一意になる

import Foundation

func hakuchumu() {
    let words = ["dream", "dreamer", "erase", "eraser"]
    var S = readLine()!
    
    while let word = words.first(where: { S.hasSuffix($0)}) {
        S.removeLast(word.count)
    }
    
    print(S.isEmpty ? "YES" : "NO")
}
