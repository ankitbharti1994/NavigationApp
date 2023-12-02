//
//  CarrierView.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import Foundation
import SwiftUI

struct CarrierView: View {
    let viewModel: ViewModel
    @State private var shouldMove = false
    
    var body: some View {
        VStack {
            Text("Carrier")
            Spacer()
            Button {
                shouldMove = true
            } label: {
                Text("Continue")
            }
            .buttonStyle(BorderedButtonStyle())
        }
        .padding()
        .sheet(isPresented: $shouldMove) {
            let nextStep = viewModel.nextScreenForSelectedFamily
            let datasource = nextStep?.dataSource
            let router = nextStep?.router
            if let router, let datasource {
                AnyView(router.start(dataSource: datasource, viewModel: viewModel))
            }
        }
    }
}
