//
//  Permutation.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/12.
//

import Foundation

func permutation(_ args: [Int]) -> [[Int]] {
  guard args.count > 1 else { return [args] }
  func rotate(_ arr: [Int]) -> [Int] { [arr.last!] + arr.dropLast() }
  var rotatedValue = args
  var result: [[Int]] = []
    for _ in 0..<args.count {
      let head = rotatedValue.first!
      let tail = rotatedValue.dropFirst().map { Int($0) }
      permutation(tail).forEach {
        result.append([head] + $0)
      }
      rotatedValue = rotate(rotatedValue)
    }
    return result
}
