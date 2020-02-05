//
//  ProductListView.swift
//  grad2020
//
//  Created by Jiveksha Bhosle on 2020/02/05.
//  Copyright © 2020 Jiveksha Bhosle. All rights reserved.
//

import SwiftUI

struct ProductListView: View {
    
    ///ViewModel
    let viewModel: ViewModelProductView
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15.0) {
                        
            Text(viewModel.data.title).font(.body)
                .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                .foregroundColor(Color.black)
            
            
            Text(viewModel.data.subtitle ?? "").lineLimit(nil).font(.caption)
                .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                
                .foregroundColor(Color.black)
            
        }
        .frame(width: 300, height: 240)
        .background(Color.white)
        .cornerRadius(5)
        .scaledToFill()
        .padding(EdgeInsets.init(top: 0, leading: 5, bottom: 0, trailing: 5))
        
        
        
    }
}

