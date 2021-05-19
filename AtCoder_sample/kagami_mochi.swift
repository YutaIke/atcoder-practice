//
//  kagami_mochi.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/09.
//
// https://atcoder.jp/contests/abs/tasks/abc085_b
// 要素の重複削除

import Foundation

func kagami_mochi() {
    let N = Int(readLine()!)!

    // 解１：Set
//    let numbers = (0..<N).map { _ in Int(readLine()!)! }
//    print(Set(numbers).count)
    
    // 解２：Dictionary
    var dictionary: [Int: String] = [:]
    (0..<N).forEach { _ in
        let number = Int(readLine()!)!
        dictionary[number] = "found!"
    }
    print(dictionary.count)
}
