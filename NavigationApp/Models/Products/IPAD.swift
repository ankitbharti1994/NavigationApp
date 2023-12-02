//
//  IPAD.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation

struct IPAD: ProductFamilyProtocol {
    var name: ProductFamily {
        .iPad
    }
    
    var flows: [any FlowDataSourceRouterProtocol] = [TradeIn(), WaysToPay()]
}
