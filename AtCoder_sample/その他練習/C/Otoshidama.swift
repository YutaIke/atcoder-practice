//
//  Otoshidama.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/09.
//

// https://atcoder.jp/contests/abs/tasks/abc085_c
// ループの数を減らす
// 一般的な計算機が1秒間に実行できる計算量は大体10^8程度
// 2,001通り * 2,001通り × 2,001通り ≒ 8×10^9 通り
// →O(n^3)だとTLE(実行時間制限超過)になる

import Foundation

func otoshidama() {
    let NY = readLine()!.split(separator: " ").map { Int($0)! }
    let N = NY[0]
    let Y = NY[1]
    
    for i in 0...N {
        for j in 0...N-i {
            let k = N - i - j
            if Y == (10000*i) + (5000*j) + (1000*k) {
                print(i,j,k)
                return
            }
        }
    }
    print(-1,-1,-1)
}
