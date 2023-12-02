//
//  ContentView.swift
//  NavigationApp
//
//  Created by ankit bharti on 02/12/23.
//

import SwiftUI

struct ContentView: View {
    let viewModel = ViewModel(supportedProductFamily: [iPhone(), Watch()])
    @State private var shouldMove = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.supportedProductFamily, id: \.name) { product in
                    Button {
                        self.viewModel.updateSelectedProduct(product)
                        self.shouldMove = true
                    } label: {
                        Text(product.name.rawValue)
                    }
                    
                }
            }
        }
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

#Preview {
    ContentView()
}
