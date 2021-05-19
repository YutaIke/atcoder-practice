//
//  GameinMomotetsuWorld.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/15.
//

// https://atcoder.jp/contests/abc201/tasks/abc201_d
// ミニマックス法 https://www.webcyou.com/?p=6997


import Foundation

func momotetsuWorld() {
    let HW = readLine()!.split(separator: " ").map { Int($0)! }
    let (H, W) = (HW[0], HW[1])
    
    var A:[[Int]] = []
    for _ in 0..<H {
        let n = Array(readLine()!)
        var c: [Int] = []
        for a in n{
            if a == "+"{
                c.append(1)
            }else{
                c.append(-1)
            }
        }
        A.append(c)
    }
    
    var dp: [[Int?]] = Array(repeating: Array(repeating: nil, count: W), count: H)
    dp[H-1][W-1] = 0
    for i in (0..<H).reversed() {
        for j in (0..<W).reversed() {
            if (i==H-1 && j==W-1) { continue }
            if (i+j).isMultiple(of: 2) {
                // Takahashi
                if (j == W-1) {
                    dp[i][j] = dp[i+1][j]! + A[i+1][j]
                } else if (i == H-1) {
                    dp[i][j] = dp[i][j+1]! + A[i][j+1]
                } else {
                    dp[i][j] = max(dp[i+1][j]! + A[i+1][j], dp[i][j+1]! + A[i][j+1])
                }
            } else {
                // Aoki
                if (j == W-1) {
                    // Takahashi目線では点数はマイナスになるため引いている
                    dp[i][j] = dp[i+1][j]! - A[i+1][j]
                } else if (i == H-1) {
                    dp[i][j] = dp[i][j+1]! - A[i][j+1]
                } else {
                    // Takahashi評価値が最小になるようにAokiは行動する
                    dp[i][j] = min(dp[i+1][j]! - A[i+1][j], dp[i][j+1]! - A[i][j+1])
                }
            }
        }
    }
    
    let ans = dp[0][0]!
    if ans > 0 {
        print("Takahashi")
    } else if ans < 0 {
        print("Aoki")
    } else {
        print("Draw")
    }

}
