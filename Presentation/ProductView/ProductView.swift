
import SwiftUI

struct ProductView: View {
    /**
    1) Fix the image for the product.
    2) Add text with price for the product.
    */
    ///ViewModel
    let viewModel: ViewModelProductView
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ImageView.init(url:"https://i.picsum.photos/id/0/5616/3744.jpg")

            Text(viewModel.data.title).font(.body)
                .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                .foregroundColor(Color.black)
                .background(Color.white)
            
            Text("").lineLimit(nil).font(.caption)
                .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                .foregroundColor(Color.black)
            .background(Color.white)

            Spacer()


        }
        .frame(width: 300, height: 235, alignment: .top)
        .background(Color.white)
        .scaledToFill()
        .padding(EdgeInsets.init(top: 10, leading: 5, bottom: 0, trailing: 5))
        .overlay(
            RoundedRectangle(cornerRadius: 2)
                .stroke(Color.gray, lineWidth: 1.0)
        )
        
    }
}
