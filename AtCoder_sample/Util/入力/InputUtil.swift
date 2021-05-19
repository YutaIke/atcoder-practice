//
//  InputUtil.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/16.
//

import Foundation

func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int($0)! }
}

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1])
}

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int($0)! }
    return (a: ints[0], b: ints[1], c: ints[2])
}
