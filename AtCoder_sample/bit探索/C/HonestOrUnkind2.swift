//
//  HonestOrUnkind2.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/12.
//

// https://atcoder.jp/contests/abc147/tasks/abc147_c

import Foundation

func honestOrUnkind2() {
    let N = Int(readLine()!)!

//    var honests:[[Int]] = [[Int]].init(repeating: [Int](repeating: 0, count: 14), count: 15)
//    var liars:[[Int]] = [[Int]].init(repeating: [Int](repeating: 0, count: 14), count: 15)
    var A:[Int] = [Int](repeating: 0, count: N)
    var x:[[Int]] = [[Int]].init(repeating: [], count: N)
    var y:[[Int]] = [[Int]].init(repeating: [], count: N)
    for i in 0..<N {
        A[i] = Int(readLine()!)!
        for _ in 0..<A[i] {
            let xy = readLine()!.split(separator: " ").map { Int($0)! }
            x[i].append(xy[0])
            y[i].append(xy[1])
        }
    }
    
    var ans = 0
    for bit in 0..<(1<<N) {
        var cnt = 0;
        var isHonest = [Bool](repeating: false, count: N)
        for i in 0..<N {
            if (bit & (1<<i)) > 0 {
                isHonest[i] = true;
                cnt += 1;
            }
        }
        
        var flag = true
        for i in 0..<N {
            if (!isHonest[i]) { continue }
            for j in 0..<A[i] {
                if (isHonest[x[i][j] - 1] != (y[i][j] == 1))
                {
                    flag = false
                    break
                }
            }
            if (!flag) { break }
        }
        if (flag) {
            ans = max(ans, cnt);
        }
    }
    print(ans)
}
