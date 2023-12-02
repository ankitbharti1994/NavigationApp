//
//  Carrier.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation

struct Carrier: FlowDataSourceRouterProtocol {
    var id = UUID()
    
    var dataSource: DatasourceProtocol {
        CarrierDataSource(flowType: .bag)
    }
    
    var router: any RouterProtocol {
        CarrierRouter()
    }
}
