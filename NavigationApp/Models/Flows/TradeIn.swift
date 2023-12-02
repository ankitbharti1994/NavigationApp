//
//  TradeIn.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation

struct TradeIn: FlowDataSourceRouterProtocol {
    var id = UUID()
    
    var dataSource: DatasourceProtocol {
        TradeInDataSource(flowType: .bag)
    }
    
    var router: any RouterProtocol {
        TradeInRouter()
    }
}
