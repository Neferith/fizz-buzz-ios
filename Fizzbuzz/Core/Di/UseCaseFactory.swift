//
//  UseCaseFactory.swift
//  Fizzbuzz
//
//  Created by Vivien on 26/11/2022.
//

import Foundation


/// A simple factory based on Swift Callable API. It takes a closure and creates a
/// callable struct that will invoke the closure. This allows you to create inline factories
/// in your Boundaries.
public struct Factory<Configuration, Interface> {
    private let construction: (Configuration) -> Interface
    
    public init(construction: @escaping (Configuration) -> Interface) {
        self.construction = construction
    }
    
    public func callAsFunction(configuration: Configuration) -> Interface {
        return construction(configuration)
    }
}

struct UseCaseFactory {
    
    
    func makeFizzbuzzStorage(userDefaults:UserDefaults)-> FizzbuzzStorage {
        return FizzbuzzStorageImpl(userDefaults: userDefaults)
    }
    
    func makeFizzbuzzRepository(fizzbuzzStorage:FizzbuzzStorage)-> FizzbuzzRepository {
        return FizzbuzzRepository(fizzbuzzStorage: fizzbuzzStorage)
    }
    
    
    func makeGetFizzbuzzEntityUseCase(fizzbuzzRepository:FizzbuzzRepository) -> GetFizzbuzzEntityUseCase {
        return GetFizzbuzzEntityUseCase(fizzbuzzRepository:fizzbuzzRepository)
    }
    
    func makeSaveFizzbuzzEntityUseCase(fizzbuzzRepository:FizzbuzzRepository) -> SaveFizzbuzzEntityUseCase {
        return SaveFizzbuzzEntityUseCase(fizzbuzzRepository: fizzbuzzRepository)
    }
    
    
    func makeFormViewModel(saveFizzbuzzEntityUseCase:SaveFizzbuzzEntityUseCase,getFizzbuzzEntityUseCase:GetFizzbuzzEntityUseCase) -> FormViewModel {
        return FormViewModel(saveFizzbuzzEntityUseCase: saveFizzbuzzEntityUseCase, getFizzbuzzEntityUseCase: getFizzbuzzEntityUseCase)
    }
}
