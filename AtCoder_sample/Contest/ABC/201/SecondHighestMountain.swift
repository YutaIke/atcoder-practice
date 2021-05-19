//
//  SecondHighestMountain.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/15.
//

// https://atcoder.jp/contests/abc201/tasks/abc201_b

import Foundation

func secondHighestMountain() {
    let N = Int(readLine()!)!
    var ST: [(s:String, t:Int)] = []
    for _ in 0..<N {
        let st = readLine()!.split(separator: " ").map { String($0) }
        ST.append((st[0], Int(st[1])!))
    }
    ST.sort(by: { $0.t > $1.t })
    
    print(ST[1].s)
}
