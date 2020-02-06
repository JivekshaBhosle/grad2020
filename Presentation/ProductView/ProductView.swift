
import SwiftUI

struct ProductView: View {
    
    ///ViewModel
    let viewModel: ViewModelProductView
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15.0) {
            
//            HStack{
            ImageView.init(url: viewModel.data.full)
                .aspectRatio(2, contentMode: .fit)
                .background(Color.blue)
                .padding(.top, 10)
//            .frame(alignment: .center)
//            }
            
            Text(viewModel.data.title).font(.body)
                .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                .foregroundColor(Color.black)
            
            
            Text(viewModel.data.subtitle ?? "").lineLimit(nil).font(.caption)
                .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                .foregroundColor(Color.black)
            
        }
        .frame(width: 300, height: 240)
        .background(Color.white)
        .scaledToFill()
        .padding(EdgeInsets.init(top: 0, leading: 5, bottom: 0, trailing: 5))
        .overlay(
            RoundedRectangle(cornerRadius: 2)
                .stroke(Color.gray, lineWidth: 2)
        )
        
    }
}
