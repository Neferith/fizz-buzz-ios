//
//  GetFizzbuzzEntityUseCase.swift
//  Fizzbuzz
//
//  Created by Vivien on 26/11/2022.
//

import Foundation

struct GetFizzbuzzEntityUseCase {
    
    private let fizzbuzzRepository: FizzbuzzRepository
    
    init(fizzbuzzRepository: FizzbuzzRepository) {
        self.fizzbuzzRepository = fizzbuzzRepository
        
    }
    
    func invoke() -> FizzbuzzEntity {
        return fizzbuzzRepository.loadCurrentFizzBuzzEntity()
    }
    
}
