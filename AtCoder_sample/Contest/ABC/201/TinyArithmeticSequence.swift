//
//  TinyArithmeticSequence.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/15.
//

// https://atcoder.jp/contests/abc201/tasks/abc201_a

import Foundation

func permutations<T>(arr: [T]) -> [[T]] {
    if arr.count <= 1 {
        return [arr]
    }
    var temp: [[T]] = []
    for i in 0..<arr.count {
        var cp = arr
        let a = cp.remove(at: i)
        temp += permutations(arr: cp).map { arr -> [T] in
            var arr = arr
            arr.append(a)
            return arr
        }
    }
    return temp
}

func tinyArithmeticSequence() {
    let A = readLine()!.split(separator: " ").map { Int($0)! }
    
    let perm = permutations(arr: A)
    for a in perm {
        let a12 = a[1] - a[0]
        let a23 = a[2] - a[1]
        if a12 == a23 {
            print("Yes")
            return
        }
    }
    print("No")
}

