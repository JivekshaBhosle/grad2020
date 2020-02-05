
import SwiftUI

struct ProductView: View {
    
    ///ViewModel
    let viewModel: ViewModelProductView
    
    var body: some View {
        
        /// main vertical stack view - contains upper stackview and image
        VStack(alignment: .leading, spacing: 10) {
            // Upper Stackview - Contains Horizontal stack and post content
            VStack(alignment: .leading, spacing: 15.0) {
                HStack(spacing: 60) {

                    VStack(alignment: .leading) {
                        
                        Text(viewModel.data.title).font(.body)
                            .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                            .foregroundColor(Color.black)
                        
                        ImageView.init(url: viewModel.data.full)

                        Text(viewModel.data.subtitle ?? "").lineLimit(nil).font(.caption)
                            .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                        
                            .foregroundColor(Color.black)
                    }
                }
            }
            .frame(width: 300, height: 240)
            .background(Color.orange)
            .cornerRadius(5)
            .scaledToFill()
            .padding(EdgeInsets.init(top: 0, leading: 5, bottom: 0, trailing: 5))
            
            
        }
    }
}
