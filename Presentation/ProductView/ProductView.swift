
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
                    // avatar
                    // AvatarView(image: post.user.avatar, size: 70)
                    VStack(alignment: .leading) {
                        
                        Text(viewModel.data.title).font(.body)
                            .foregroundColor(Color.black)
                            .padding(.leading, 5)
                            .padding(.top, 5)
                        
                        Text(viewModel.data.subtitle ?? "").lineLimit(nil).font(.caption)
                            .foregroundColor(Color.black)
                            .padding(.leading, 5)
                            .padding(.top, 5)
                    }
                }
                
            }
            .frame(width: 300, height: 240)
            .background(Color.orange)
            .cornerRadius(5)
            .scaledToFill()
                .padding(5)  // spacing from left edge of the view
                .padding(.trailing, 5)// spacing from right edge of the view
            
            // post image
            //            Image(post.image ?? "")
            //                .resizable()  // creates resizable image
            //                // this will allow image to fit the screen width maintaining aspect ratio
            //                .aspectRatio(3/2, contentMode: .fit)
        }
    }
}
