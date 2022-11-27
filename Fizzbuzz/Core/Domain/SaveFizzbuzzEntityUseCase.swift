//
//  SaveFizzbuzzEntityUseCase.swift
//  Fizzbuzz
//
//  Created by Vivien on 26/11/2022.
//

import Foundation

struct SaveFizzbuzzEntityUseCase {
    
    private let fizzbuzzRepository: FizzbuzzRepository
    
    init(fizzbuzzRepository: FizzbuzzRepository) {
        self.fizzbuzzRepository = fizzbuzzRepository
        
    }
    
    func invoke(entity:FizzbuzzEntity) {
        return fizzbuzzRepository.saveCurrentFizzBuzzEntity(entity: entity)
    }
    
}
