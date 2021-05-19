//
//  ARC31-B.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/18.
//

// https://atcoder.jp/contests/arc031/tasks/arc031_2
// 連結成分の個数

import Foundation

//let dx: [Int] = [1, 0, -1, 0]
//let dy: [Int] = [0, 1, 0, -1]
//
//var field: [[String]] = Array(repeating: Array(repeating: "", count: 10), count: 10)
//var seen: [[Bool]] = Array(repeating: Array(repeating: false, count: 10), count: 10)
//var cnt_dfsmaru = 0
//
//func dfsArc31_2(h: Int, w: Int) {
//    seen[h][w] = true
//    
//    for i in 0..<4 {
//        let next_h = h + dx[i]
//        let next_w = w + dy[i]
//        
//        if (next_h < 0 || next_h >= 10 || next_w < 0 || next_w >= 10) { continue }
//        if field[next_h][next_w] == "x" { continue }
//        if seen[next_h][next_w] == true { continue }
//
//        cnt_dfsmaru += 1
//        dfsArc31_2(h: next_h, w: next_w)
//    }
//}
//
//func arc031_2() {
//    var cnt_maru = 0
//    for i in 0..<10 {
//        let A = readLine()!.map { String($0) }
//        for j in 0..<10 {
//            field[i][j] = A[j]
//            if (A[j] == "o") { cnt_maru += 1 }
//        }
//    }
//    
//    for i in 0..<10 {
//        for j in 0..<10 {
//            if field[i][j] == "o" { continue }
//            seen = Array(repeating: Array(repeating: false, count: 10), count: 10)
//            cnt_dfsmaru = 0
//            dfsArc31_2(h: i, w: j)
//            
//            if cnt_dfsmaru == cnt_maru {
//                print("YES")
//                return
//            }
//        }
//    }
//    
//    print("NO")
//}
