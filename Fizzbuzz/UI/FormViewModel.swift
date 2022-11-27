//
//  FormViewModel.swift
//  Fizzbuzz
//
//  Created by Vivien on 27/11/2022.
//

import Foundation


class FormViewModel: ObservableObject {
    
    let saveFizzbuzzEntityUseCase:SaveFizzbuzzEntityUseCase
    let getFizzbuzzEntityUseCase:GetFizzbuzzEntityUseCase
    
    var currentItem:FizzbuzzEntity
    
    init(saveFizzbuzzEntityUseCase:SaveFizzbuzzEntityUseCase, getFizzbuzzEntityUseCase:GetFizzbuzzEntityUseCase) {
        self.saveFizzbuzzEntityUseCase = saveFizzbuzzEntityUseCase
        self.getFizzbuzzEntityUseCase = getFizzbuzzEntityUseCase
        self.currentItem = getFizzbuzzEntityUseCase.invoke()
    }
    
    func updateInt1(value: UInt64) {
        currentItem.int1 = value
    }
    
    func updateInt2(value: UInt64) {
        currentItem.int2 = value
    }
    
    func updateLimit(value: UInt64) {
        currentItem.limit = value
    }
    
    func updateStr1(value: String) {
        currentItem.str1 = value
    }
    
    func updateStr2(value: String) {
        currentItem.str2 = value
    }
    
    func submit() { saveFizzbuzzEntityUseCase.invoke(entity:currentItem)}
    
    
    
}
