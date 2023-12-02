//
//  iPhone.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation

struct iPhone: ProductFamilyProtocol {
    var name: ProductFamily {
        .iPhone
    }
    
    var flows: [any FlowDataSourceRouterProtocol] = [Carrier(), TradeIn(), AppleCare(), WaysToPay()]
}
