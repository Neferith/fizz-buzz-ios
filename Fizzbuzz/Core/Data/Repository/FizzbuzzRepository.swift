//
//  FizzbuzzRepository.swift
//  Fizzbuzz
//
//  Created by Vivien on 26/11/2022.
//

import Foundation

struct FizzbuzzRepository {
    
    private let fizzbuzzStorage: FizzbuzzStorage
    
    init(fizzbuzzStorage:FizzbuzzStorage) {
        self.fizzbuzzStorage = fizzbuzzStorage
    }
    
    func loadCurrentFizzBuzzEntity() -> FizzbuzzEntity {
        return fizzbuzzStorage.loadEntity()
    }
    
    func saveCurrentFizzBuzzEntity(entity: FizzbuzzEntity) {
        return fizzbuzzStorage.saveEntity(entity:entity)
    }
    
}
