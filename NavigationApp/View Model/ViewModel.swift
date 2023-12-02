//
//  ViewModel.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation

class ViewModel: ObservableObject {
    private(set) var supportedProductFamily: [ProductFamilyProtocol]
    private var selectedFamily: ProductFamilyProtocol?
    var currentScreenForSelectedFamily: (any FlowDataSourceRouterProtocol)?
    
    init(supportedProductFamily: [ProductFamilyProtocol]) {
        self.supportedProductFamily = supportedProductFamily
    }
    
    var nextScreenForSelectedFamily: (any FlowDataSourceRouterProtocol)? {
        guard let currentScreen = currentScreenForSelectedFamily,
              let length = selectedFamily?.flows.count else {
            currentScreenForSelectedFamily = selectedFamily?.flows.first
            return currentScreenForSelectedFamily
        }
        
        let index = selectedFamily?.flows.firstIndex(where: {
            $0.isEqual(to: currentScreen)
        })
        
        guard let index, index < length - 1 else {
            return nil
        }
        
        let nextIndex = index + 1
        let nextScreen = selectedFamily?.flows[nextIndex]
        self.currentScreenForSelectedFamily = nextScreen
        return nextScreen
    }
    
    func updateSelectedProduct(_ product: ProductFamilyProtocol) {
        self.selectedFamily = product
    }
}
