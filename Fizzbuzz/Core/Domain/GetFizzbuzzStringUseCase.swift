//
//  GetFizzbuzzStringUseCase.swift
//  Fizzbuzz
//
//  Created by Vivien on 26/11/2022.
//

import Foundation

struct GetFizzbuzzStringUseCase {
    
    private let fizzbuzzRepository: FizzbuzzRepository
    
    init(fizzbuzzRepository: FizzbuzzRepository) {
        self.fizzbuzzRepository = fizzbuzzRepository
        
    }
    
    
    func invoke(index: UInt64, item: FizzbuzzEntity) -> String {
        var str = ""
        // All multiples of int1 are replaced by str1
        if (index % item.int1 == 0) {
            str += item.str1
        }
        // All multiples of int2 are replaced by str2
        if (index % item.int2 == 0) {
            str += item.str2
        }
        return (str.isEmpty) ? String(index) : str
        
    }
    
}
