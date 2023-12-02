//
//  TradeInRouter.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation
import SwiftUI

struct TradeInRouter: RouterProtocol {
    func start(dataSource: DatasourceProtocol, viewModel: ViewModel) -> some View {
        TradeInView(viewModel: viewModel)
    }
}
