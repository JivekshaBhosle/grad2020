
import SwiftUI

struct ProductDetailView: View {
    let viewModel: ViewModelProductView
    
    var body: some View {
            List{
                
                ImageView.init(url: "https://i.picsum.photos/id/1/5616/3744.jpg")
                    .frame(width: 330, height: 150, alignment: .trailing)
                
                Text(viewModel.data.title).font(.body)
                    .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 0, trailing: 0))
                    .foregroundColor(Color.black)
                    .background(Color.white)
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                    .italic()
                    .font(.caption)
                    .lineLimit(nil)
                    .padding(EdgeInsets.init(top: 10, leading: 5, bottom: 0, trailing: 5))
                    .foregroundColor(Color.black)
            }
            .navigationBarTitle(Text(""))

    }
}

