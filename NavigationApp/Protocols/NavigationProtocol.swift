//
//  NavigationProtocol.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation
import SwiftUI

protocol DatasourceProtocol {
    var flowType: FlowType { get set }
}

protocol RouterProtocol {
    associatedtype view: View
    func start(dataSource: DatasourceProtocol, viewModel: ViewModel) -> view
}

protocol ProductFamilyProtocol {
    var name: ProductFamily { get }
    var flows: [any FlowDataSourceRouterProtocol] { get set }
}

protocol FlowDataSourceRouterProtocol {
    var id: UUID { get set }
    var dataSource: DatasourceProtocol { get }
    var router: any RouterProtocol { get }
    func isEqual<T: FlowDataSourceRouterProtocol>(to flow: T) -> Bool
}

extension FlowDataSourceRouterProtocol {
    func isEqual<T: FlowDataSourceRouterProtocol>(to flow: T) -> Bool {
        self.id == flow.id
    }
}
