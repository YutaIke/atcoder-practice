//
//  Switches.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/12.
//

// https://atcoder.jp/contests/abc128/tasks/abc128_c

import Foundation

func switches() {
    let NM = readLine()!.split(separator: " ").map { Int($0)! }
    let N = NM[0]
    let M = NM[1]
    var kses:[[Int]] = [[Int]].init(repeating: [], count: M)
    for i in 0..<M {
        kses[i] = readLine()!.split(separator: " ").map { Int($0)! }
//        kses.append(readLine()!.split(separator: " ").map { Int($0)! }, )
    }
    let p = readLine()!.split(separator: " ").map { Int($0)! }

    var result = 0
    var switches = [Int](repeating: 0, count: N)
    for i in 0..<(1<<N) {
        for j in 0..<N {
            if (i & (1<<j)) > 0 {
                switches[j] = 1
            } else {
                switches[j] = 0
            }
        }
        
        var ok = 0
        for m in 0..<M {
            var count_on = 0
            let ks = kses[m]
            for x in 1...ks[0] {
                count_on += switches[ks[x]-1]
            }
            if (count_on % 2) == p[m] {
                ok += 1
            }
        }
        if ok == M { result += 1 }
    }
    print(result)
}

