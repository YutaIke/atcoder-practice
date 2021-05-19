//
//  B-81.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/09.
//

// https://atcoder.jp/contests/abc144/tasks/abc144_b

import Foundation

func b81() {
    let N = Int(readLine()!)!
    
    for i in 1...9 {
        for j in 1...9 {
            if N == i * j {
                print("Yes")
                return
            }
        }
    }
    
    print("No")
}
