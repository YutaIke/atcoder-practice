//
//  Frog1.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/16.
//

// https://atcoder.jp/contests/dp/tasks/dp_a
// DP法 入門
// https://qiita.com/drken/items/dc53c683d6de8aeacf5a#a-%E5%95%8F%E9%A1%8C---frog-1

import Foundation

func frog1() {
    let N = Int(readLine()!)!
    let h = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dp: [Int?] = Array(repeating: Int.max, count: N)
    for i in 0..<N {
        if i == 0 {
            dp[i] = 0
            continue
        }
        dp[i] = min(dp[i]!, dp[i-1]!+abs(h[i]-h[i-1]))
        if i > 1 {
            dp[i] = min(dp[i]!, dp[i-2]!+abs(h[i]-h[i-2]))
        }
    }
    
    print(dp[N-1]!)
}
