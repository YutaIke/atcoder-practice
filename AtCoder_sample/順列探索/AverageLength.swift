//
//  AverageLength.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/12.
//

// https://atcoder.jp/contests/abc145/tasks/abc145_c

import Foundation

func averageLength() {
    let N = Int(readLine()!)!
    var x:[Double] = []
    var y:[Double] = []
    for _ in 0..<N {
        let xy = readLine()!.split(separator: " ").map { Double($0)! }
        x.append(xy[0])
        y.append(xy[1])
    }
    
    var array:[Int] = []
    for i in 0..<N {
        array.append(i)
    }
    
    let perm_array = perm(array)
    var sum = 0.0
    perm_array.forEach { arr in
        for i in 0..<arr.count-1 {
            let temp = sqrt((x[arr[i]]-x[arr[i+1]]) * (x[arr[i]]-x[arr[i+1]]) + (y[arr[i]]-y[arr[i+1]]) * (y[arr[i]]-y[arr[i+1]]))
            sum += temp
        }
    }
    let ans = sum / Double(perm_array.count)
    print(ans)
}

func perm(_ args: [Int]) -> [[Int]] {
    guard args.count > 1 else { return [args] }
    func rotate(_ arr: [Int]) -> [Int] {
        [arr.last!] + arr.dropLast()
    }
    var rotatedValue = args
    var result: [[Int]] = []
    for _ in 0..<args.count {
        let head = rotatedValue.first!
        let tail = rotatedValue.dropFirst().map { Int($0) }
        perm(tail).forEach {
            result.append([head] + $0)
        }
        rotatedValue = rotate(rotatedValue)
    }
    return result
}


