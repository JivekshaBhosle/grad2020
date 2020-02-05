
import SwiftUI

struct ProductView: View {
    
    ///ViewModel
    let viewModel: ViewModelProductView
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ImageView.init(url: viewModel.data.full)
            Text(viewModel.data.title).font(.body)
                .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                .foregroundColor(Color.black)
                .background(Color.red)
            
            Text(viewModel.data.subtitle ?? "").lineLimit(nil).font(.caption)
                .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                .foregroundColor(Color.black)
            .background(Color.yellow)

            Spacer()

        }
        .frame(width: 300, height: 240, alignment: .top)
        .background(Color.white)
        .scaledToFill()
        .padding(EdgeInsets.init(top: 10, leading: 5, bottom: 0, trailing: 5))
        .overlay(
            RoundedRectangle(cornerRadius: 2)
                .stroke(Color.gray, lineWidth: 2)
        )
        
    }
}
