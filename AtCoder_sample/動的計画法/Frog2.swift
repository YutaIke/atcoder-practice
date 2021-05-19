//
//  Frog2.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/16.
//

// https://atcoder.jp/contests/dp/tasks/dp_b
// DP法 入門

import Foundation

func frog2() {
    let NK = readLine()!.split(separator: " ").map { Int($0)! }
    let N = NK[0]
    let K = (NK[1] > N-1) ? N-1 : NK[1]
    let h = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dp: [Int] = Array(repeating: Int.max, count: N)
    for i in 0..<N {
        if i == 0 {
            dp[i] = 0
            continue
        }
        
        if i < K {
            for j in 1...i {
                dp[i] = min(dp[i], dp[i-j]+abs(h[i]-h[i-j]))
            }
            continue
        }
        
        for j in 1...K {
            dp[i] = min(dp[i], dp[i-j]+abs(h[i]-h[i-j]))
        }
    }
    
    print(dp[N-1])

}
