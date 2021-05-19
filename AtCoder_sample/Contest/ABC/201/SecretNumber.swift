//
//  SecretNumber.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/15.
//

// https://atcoder.jp/contests/abc201/tasks/abc201_c

import Foundation

func secretNumber() {
    let S = readLine()!
    var maru:[Int] = []
    var batu:[Int] = []
    var hatena:[Int] = []
    
    var count = 0
    for s in S {
        if s == "o" {
            maru.append(count)
        } else if s == "x" {
            batu.append(count)
        } else {
            hatena.append(count)
        }
        count += 1
    }
    
    if maru.count > 4 {
        print(0)
        return
    }
    
    let maruhatenaStr = (maru + hatena).map { String($0) }
    var ans = 0
    for i in 0...9999 {
        var secretNumStr = String(format: "%04d", i)
        var flag = true
        for j in 0..<maru.count {
            if let range = secretNumStr.range(of: String(maru[j])) {
                secretNumStr.removeSubrange(range)
            } else {
                flag = false
                break
            }
        }
        for s in secretNumStr {
            if !maruhatenaStr.contains(String(s)) { flag = false }
        }
        if flag { ans += 1 }
    }

    print(ans)
}
