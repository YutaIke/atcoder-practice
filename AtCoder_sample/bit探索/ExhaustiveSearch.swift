//
//  ExhaustiveSearch.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/12.
//

// https://judge.u-aizu.ac.jp/onlinejudge/description.jsp?id=ALDS1_5_A&lang=ja

import Foundation

func exhaustiveSearch() {
    let n = Int(readLine()!)!
    let A = readLine()!.split(separator: " ").map { Int($0)! }
    let q = Int(readLine()!)!
    let m = readLine()!.split(separator: " ").map { Int($0)! }
    
    for i in 0..<q {
        if search(n, A, m[i]) {
            print("yes")
        } else {
            print("no")
        }
    }
}

func search(_ n: Int, _ A:[Int], _ mi: Int) -> Bool {
    for i in 0..<(1<<n) {
        var sum = 0
        for j in 0..<n {
            if (i & (1<<j)) > 0 {
                sum += A[j]
            }
        }
        if sum == mi { return true }
    }
    return false
}
