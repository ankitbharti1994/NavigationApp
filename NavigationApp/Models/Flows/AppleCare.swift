//
//  AppleCare.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation

struct AppleCare: FlowDataSourceRouterProtocol {
    var id = UUID()
    
    var dataSource: DatasourceProtocol {
        AppleCareDataSource(flowType: .bag)
    }
    
    var router: any RouterProtocol {
        AppleCareRouter()
    }
}
