//
//  K-thCommonDivisor.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/10.
//

// https://atcoder.jp/contests/abc120/tasks/abc120_b
// for 逆順

import Foundation

func kthCommonDivisor() {
    let abk = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b, k) = (abk[0], abk[1], abk[2])
    
    var count = 0
    for i in (1...min(a,b)).reversed() {
        if a.isMultiple(of: i) && b.isMultiple(of: i) {
            count += 1
            if count == k {
                print(i)
            }
        }
    }
}
