//
//  HalfandHalf.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/10.
//

// https://atcoder.jp/contests/abc095/tasks/arc096_a
// if i < 0 { i = 0 } ⇨ max(0, i)

import Foundation

func halfAndHalf() {
    let abcxy = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b, c, x, y) = (abcxy[0], abcxy[1], abcxy[2], abcxy[3], abcxy[4])
    
    var sum = a*x + b*y
    
    // sum = i*a + j*b + k*c
    var k = 0
    while k/2 <= max(x,y) {
//        var i = x - k/2
//        var j = y - k/2
//        if i < 0 { i = 0 }
//        if j < 0 { j = 0 }
        let i = max(0, x-k/2)
        let j = max(0, y-k/2)

        let temp = i*a + j*b + k*c
        if temp < sum {
            sum = temp
        }
        k += 2
    }
    print(sum)
}
