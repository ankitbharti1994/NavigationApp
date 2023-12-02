//
//  AppleCareRouter.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation
import SwiftUI

struct AppleCareRouter: RouterProtocol {
    func start(dataSource: DatasourceProtocol, viewModel: ViewModel) -> some View {
       AppleCareView(viewModel: viewModel)
    }
}
