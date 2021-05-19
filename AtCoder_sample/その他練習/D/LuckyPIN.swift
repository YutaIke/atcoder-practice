//
//  LuckyPIN.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/10.
//

// https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_d
// 任意の位置から任意の文字数の切り出し
// 動的計画法

import Foundation

func luckyPIN() {
    let N = Int(readLine()!)!
    let S = readLine()!
    
    var cnt = 0
    for i in 0..<1000 {
        let c = [Int(i/100), Int(i/10)%10, i%10]
        var f = 0
        for j in 0..<N {
            let index = S.index(S.startIndex, offsetBy: j)
            if String(S[index]) == (String(c[f])) { f += 1 }
            if f == 3 { break }
        }
        if (f == 3) { cnt += 1 }
    }
    print(cnt)
}
