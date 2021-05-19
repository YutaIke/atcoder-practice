//
//  Vacation.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/16.
//

// https://atcoder.jp/contests/dp/tasks/dp_c

import Foundation

func vacation() {
    let N = Int(readLine()!)!
    var abc: [[Int]] = []
    for _ in 0..<N {
        abc.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    
    var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: N+1)
    for i in 0..<N {
        for j in 0...2 {
            for k in 0...2 {
                if (j == k ) { continue }
                dp[i+1][k] = max(dp[i+1][k], dp[i][j] + abc[i][k])
            }
        }
    }
    
    let ans = max(max(dp[N][0],dp[N][1]),dp[N][2])
    print(ans)
}
