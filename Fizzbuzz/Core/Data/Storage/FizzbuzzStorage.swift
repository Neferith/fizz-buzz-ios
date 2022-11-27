//
//  FizzbuzzStorage.swift
//  Fizzbuzz
//
//  Created by Vivien on 26/11/2022.
//

import Foundation

protocol FizzbuzzStorage {
    
    func saveEntity(entity:FizzbuzzEntity)
    func loadEntity()->FizzbuzzEntity
    
}

struct FizzbuzzStorageImpl:FizzbuzzStorage {
    
    private let userDefaults: UserDefaults
    
    init(userDefaults: UserDefaults = .standard) {
        self.userDefaults = userDefaults
        
    }
    
    
    func saveEntity(entity: FizzbuzzEntity) {
        userDefaults.set(entity, forKey: "lastEntity")
    }
    
    func loadEntity() -> FizzbuzzEntity {
        return userDefaults
            .value(forKey: "lastEntity") as? FizzbuzzEntity ?? FizzbuzzEntity()
    }
    
    
}


