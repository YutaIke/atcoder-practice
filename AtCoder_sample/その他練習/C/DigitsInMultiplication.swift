//
//  DigitsInMultiplication.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/10.
//

// https://atcoder.jp/contests/abc057/tasks/abc057_c
// 桁数
// 約数を求める問題
// 「A の桁数と B の桁数のうち大きい方」とは、M = max(A, B) の桁数
// 交換法則 N = A × B = B × A が成り立つことを利用します。このことから、A ≤ B を満たす A を列挙すれば良いことがわかります。
// この場合、1 ≤ A ≤√N を満たし、時間計算量はO(√N) となるため間に合います。

import Foundation

func digitsInMultiplication() {
    let N = Int(readLine()!)!
    
    var ans = cnt_digits(N)
    
    var a = 1;
    while a*a <= N {
        if !(N.isMultiple(of: a)) {
            a += 1
            continue
        }
        
        let b = N / a
        let cur = max(cnt_digits(a), cnt_digits(b))
        
        if(ans>cur) {
            ans = cur
        }
        a += 1
    }
    
    print(ans)
}

func cnt_digits(_ N: Int) -> Int {
    var digits = 0
    var n = N
    
    while(n>0) {
        n /= 10
        digits += 1
    }
    
    return digits
}
