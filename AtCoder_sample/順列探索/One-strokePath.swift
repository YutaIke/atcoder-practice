//
//  One-strokePath.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/14.
//

// https://atcoder.jp/contests/abc054/tasks/abc054_c
// 点と点を繋ぐ辺の扱い

import Foundation

func onestrokePath() {
    let NM = readLine()!.split(separator: " ").map { Int($0)! }
    let (N, M) = (NM[0], NM[1])
    
    var edges: [[Int]] = Array(repeating: [], count: N+1)
    for _ in 0..<M {
        let ab = readLine()!.split(separator: " ").map { Int($0)! }
        let (a, b) = (ab[0], ab[1])
        edges[a].append(b)
        edges[b].append(a)
    }
    
    let arr = (1...N).map { $0 }
    let perm:[[Int]] = permutations(arr: arr)
    
//    print(perm)
    var ans = 0
    for element in perm {
        if element[0] != 1 { continue }
        var flag = true
        
        for i in 0..<element.count-1 {
            let from = element[i]
            let to = element[i+1]
            if !edges[from].contains(to) {
                flag = false
                break
            }
        }
        if (flag) { ans += 1 }
    }
    
    print(ans)
}
