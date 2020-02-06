
import SwiftUI

struct ProductListView: View {
    
    ///ViewModel
    let viewModel: ViewModelProductView
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 7.0) {
            
            Text(viewModel.data.title)
                .lineLimit(nil)
                .font(.body)
                .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                .foregroundColor(Color.black)
        }
            
        .background(Color.white)
        .scaledToFit()
    }
}

