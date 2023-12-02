//
//  WaysToPay.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation

struct WaysToPay: FlowDataSourceRouterProtocol {
    var id = UUID()
    
    var dataSource: DatasourceProtocol {
        WaysToPayDataSource(flowType: .bag)
    }
    
    var router: any RouterProtocol {
        WaysToPayRouter()
    }
}
