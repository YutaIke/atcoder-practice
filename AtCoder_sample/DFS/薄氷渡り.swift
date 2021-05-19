//
//  薄氷渡り.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/18.
//

//https://atcoder.jp/contests/joi2009yo/tasks/joi2009yo_d

import Foundation

func joi2009_d() {
    let m = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    var field: [[Int]] = Array(repeating: Array(repeating: -1, count: m), count: n)
    for i in 0..<n {
        let inputs = readLine()!.split(separator: " ").map { Int($0)! }
        for j in 0..<m {
            field[i][j] = inputs[j]
        }
    }
    
    let dx: [Int] = [1, 0, -1, 0]
    let dy: [Int] = [0, 1, 0, -1]
    var seen: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)
    var depth: 
    func dfs_joi2009_d(i: Int, j: Int, d: Int) {
        seen[i][j] = true
        
        for next in 0...3 {
            let next_i = i + dx[next]
            let next_j = j + dy[next]
            
            if (next_i < 0 || next_i >= n || next_j < 0 || next_j >= m) { continue }
            if field[next_i][next_j] == 0 { continue }
            if seen[next_i][next_j] { continue }
            
            dfs_joi2009_d(i: next_i, j: next_j)
        }
    }
    
}
