//
//  Knapsack1.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/16.
//

// https://atcoder.jp/contests/dp/tasks/dp_d

import Foundation

func knapsack1() {
    let NW = readLine()!.split(separator: " ").map { Int($0)! }
    let (N, W) = (NW[0], NW[1])
    
    var weight: [Int] = []
    var value: [Int] = []
    for _ in 0..<N {
        let wv = readLine()!.split(separator: " ").map { Int($0)! }
        weight.append(wv[0])
        value.append(wv[1])
    }
    
    var dp:[[Int]] = Array(repeating: Array(repeating: 0, count: W+1), count: N+1)
    for i in 0..<N {
        for sum_w in 0...W {
            if (sum_w - weight[i]) >= 0 {
                dp[i+1][sum_w] = max(dp[i+1][sum_w], dp[i][sum_w - weight[i]] + value[i])
            }
            
            dp[i+1][sum_w] = max(dp[i+1][sum_w], dp[i][sum_w])
        }
    }
    
    print(dp[N][W])
}
