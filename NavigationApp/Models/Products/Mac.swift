//
//  Mac.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation

struct Mac: ProductFamilyProtocol {
    var name: ProductFamily {
        .mac
    }
    
    var flows: [any FlowDataSourceRouterProtocol] = [TradeIn(), AppleCare(), WaysToPay()]
}
