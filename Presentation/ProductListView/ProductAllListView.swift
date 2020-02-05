//
//  ProductListView.swift
//  grad2020
//
//  Created by Jiveksha Bhosle on 2020/02/05.
//  Copyright © 2020 Jiveksha Bhosle. All rights reserved.
//

import SwiftUI

struct ProductAllListView: View {
    
    @ObservedObject var testData = ViewModelHomeView()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(testData.data) {
                    tmpData in
                    NavigationLink(
                    destination: ProductView(viewModel: ViewModelProductView(data: tmpData))) {
                        ProductView(viewModel:  ViewModelProductView(data: tmpData))
                    }
                }
            }
            .navigationBarTitle(Text("All Deals"))
        }
    }
}
