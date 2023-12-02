//
//  Watch.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation

struct Watch: ProductFamilyProtocol {
    var name: ProductFamily {
        .watch
    }
    
    var flows: [any FlowDataSourceRouterProtocol] = [TradeIn(), WaysToPay()]
}
