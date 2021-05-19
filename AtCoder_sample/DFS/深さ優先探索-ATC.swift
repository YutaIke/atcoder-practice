//
//  深さ優先探索-ATC.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/18.
//

// https://atcoder.jp/contests/atc001/tasks/dfs_a

import Foundation

//var seen:[[Bool]] = Array(repeating: Array(repeating: false, count: 510), count: 510)
//var (H, W) = (0, 0)
//
//let dx: [Int] = [1, 0, -1, 0]
//let dy: [Int] = [0, 1, 0, -1]
//
//func dfsAtc001(gragh: inout [[String]], h: Int, w: Int) {
//    seen[h][w] = true
//    
//    for i in 0...3 {
//        let next_h = h + dx[i]
//        let next_w = w + dy[i]
//        
//        if (next_h < 0 || next_h >= H || next_w < 0 || next_w >= W) { continue }
//        if gragh[next_h][next_w] == "#" { continue }
//        if seen[next_h][next_w] { continue }
//        
//        dfsAtc001(gragh: &gragh, h: next_h, w: next_w)
//    }
//}
//
//func atc001() {
//    let HW = readLine()!.split(separator: " ").map { Int($0)! }
//    (H, W) = (HW[0], HW[1])
//    var field: [[String]] = Array(repeating: Array(repeating: "", count: W), count: H)
//    
//    
//    var sh = -1
//    var sw = -1
//    var gh = -1
//    var gw = -1
//    for i in 0..<H {
//        let C = readLine()!.map { String($0) }
//        
//        for j in 0..<W {
//            field[i][j] = C[j]
//            if C[j] == "s" {
//                sh = i
//                sw = j
//            } else if C[j] == "g" {
//                gh = i
//                gw = j
//            }
//        }
//    }
//    
//    dfsAtc001(gragh: &field, h: sh, w: sw)
//    
//    if seen[gh][gw] {
//        print("Yes")
//    } else {
//        print("No")
//    }
//}
