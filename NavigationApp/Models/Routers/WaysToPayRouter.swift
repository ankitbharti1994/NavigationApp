//
//  WaysToPayRouter.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation
import SwiftUI

struct WaysToPayRouter: RouterProtocol {
    func start(dataSource: DatasourceProtocol, viewModel: ViewModel) -> some View {
        WaysToPayView(viewModel: viewModel)
    }
}
