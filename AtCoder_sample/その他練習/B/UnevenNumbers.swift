//
//  UnevenNumbers.swift
//  AtCoder_sample
//
//  Created by 池友太 on 2021/05/09.
//

import Foundation

func unevenNumbers() {
    let N = Int(readLine()!)!
    
    var count = 0
    for i in 1...String(N).count {
        if i.isMultiple(of: 2) {
            continue;
        }
        
        if i == String(N).count {
            count += (N+1) - Int(pow(Double(10), Double(i-1)))
        } else {
            count += Int(pow(Double(10), Double(i)) - pow(Double(10), Double(i-1)))
        }
    }
    print(count)
}
