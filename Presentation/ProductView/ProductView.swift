
import SwiftUI

struct ProductView: View {
    
    ///ViewModel
    let viewModel: ViewModelProductView
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15.0) {
            
            ImageView.init(url: viewModel.data.full)
            
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
