//
//  Knapsack2.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/16.
//

// https://atcoder.jp/contests/dp/tasks/dp_e

import Foundation

func knapsack2() {
    let NW = readLine()!.split(separator: " ").map { Int($0)! }
    let (N, W) = (NW[0], NW[1])
    
    var weight: [Int] = []
    var value: [Int] = []
    for _ in 0..<N {
        let wv = readLine()!.split(separator: " ").map { Int($0)! }
        weight.append(wv[0])
        value.append(wv[1])
    }
    
    var dp: [[Int]] = Array(repeating: Array(repeating: 1000000001, count: 100000+1), count: N+1)
    
    dp[0][0] = 0
    for i in 0..<N {
        for sum_v in 0...100000 {
            if (sum_v - value[i] >= 0) {
                dp[i+1][sum_v] = min(dp[i+1][sum_v], dp[i][sum_v - value[i]] + weight[i])
            }
            
            dp[i+1][sum_v] = min(dp[i+1][sum_v], dp[i][sum_v])
        }
    }
    
    var ans = 0
    for sum_v in 0...100000 {
        if (dp[N][sum_v] <= W) {
            ans = sum_v
        }
    }
    
    print(ans)
}
