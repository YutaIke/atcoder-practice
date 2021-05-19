//
//  CountOrder.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/14.
//

// https://atcoder.jp/contests/abc150/tasks/abc150_c
// 順列メソッド permutation
// reduceの使い方
// joined()

import Foundation

func countOrder() {
    let N = Int(readLine()!)!
//    let P = readLine()!.split(separator: " ").map { Int($0)! }
    let P = readLine()!.split(separator: " ").joined()
    let Q = readLine()!.split(separator: " ").joined()
    
    let arr = (1...N).map { $0 }
    let perm = permutations(arr: arr).map { $0.lazy.map(String.init).reduce("", +) }.sorted()

    var index: (p: Int, q: Int) = (0, 0)
    
    for i in 0..<perm.count {
        let number = perm[i]
        if number == P {
            index.p = i
        }
        if number == Q {
            index.q = i
        }
        if index.p != 0 && index.q != 0 {
            break
        }
    }
    
    print(abs(index.p-index.q))

}

//func permutations<T>(arr: [T]) -> [[T]] {
//    if arr.count <= 1 {
//        return [arr]
//    }
//    var temp: [[T]] = []
//    for i in 0..<arr.count {
//        var cp = arr
//        let a = cp.remove(at: i)
//        temp += permutations(arr: cp).map { arr -> [T] in
//            var arr = arr
//            arr.append(a)
//            return arr
//        }
//    }
//    return temp
//}

extension Sequence {
    // 順列を作る関数
    func permutations() -> [[Element]] {
        func _permutations<T>(of values: [T], indices: Range<Int>, result: inout [[T]]) {
            if indices.isEmpty {
                result.append(values)
                return
            }
            var values = values
            for i in indices {
                values.swapAt(indices.lowerBound, i)
                _permutations(of: values, indices: (indices.lowerBound + 1) ..< indices.upperBound, result: &result)
            }
        }
 
        var result: [[Element]] = []
        let values = Array(self)
        _permutations(of: values, indices: values.indices, result: &result)
        return result
    }
}
