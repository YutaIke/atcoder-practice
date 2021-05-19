//
//  EvenRelation.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/18.
//

// https://atcoder.jp/contests/abc126/tasks/abc126_d
// 二部グラフ

import Foundation

var graph: [[(v: Int, w: Int)]] = Array(repeating: [], count: 100010)
//var graph: [[(v: Int, w: Int)]] = [[(v: Int, w: Int)]]()
// 1: 黒, 0:白, -1:未訪問
var color: [Int] = Array(repeating: -1, count: 100010)

func evenRelation() {
    let N = Int(readLine()!)!
    color = .init(repeating: -1, count: N+1)
    
    for _ in 0..<N-1 {
        let uvw = readLine()!.split(separator: " ").map { Int($0)! }
        graph[uvw[0]].append((uvw[1], uvw[2]))
        graph[uvw[1]].append((uvw[0], uvw[2]))
    }
    
    dfs_evenRelation(u: 1)
    
    for i in 1...N {
        print(color[i])
    }
}

func dfs_evenRelation(u: Int, c: Int = 0) {
    color[u] = c
    
    for next in graph[u] {
        let next_v = next.v
        let next_w = next.w
        
        if color[next_v] != -1 { continue }
        if next_w.isMultiple(of: 2) {
            dfs_evenRelation(u: next_v, c: c)
        } else {
            dfs_evenRelation(u: next_v, c: c==1 ? 0 : 1)
        }
    }
}
