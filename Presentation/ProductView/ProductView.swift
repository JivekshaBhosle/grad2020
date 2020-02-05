
import SwiftUI

struct ProductView: View {
    
    ///ViewModel
    let viewModel: ViewModelProductView
    
    var body: some View {
        
        /// main vertical stack view - contains upper stackview and image
        VStack(alignment: .leading, spacing: 10) {
            // Upper Stackview - Contains Horizontal stack and post content
            VStack(alignment: .leading, spacing: 15.0) {
                HStack(spacing: 10) {
                    
                    // avatar
                    // AvatarView(image: post.user.avatar, size: 70)
                    VStack(alignment: .leading, spacing: 3) {
                        Text(viewModel.data.title).font(.body)
                    }
                }
                
                // post content - specify nil for multi-line text
                Text(viewModel.data.subtitle ?? "").lineLimit(nil).font(.caption)
            }
            .frame(width: 200, height: 200)
            .background(Color.purple)
                .padding(7)  // spacing from left edge of the view
                .padding(.trailing, 7)// spacing from right edge of the view
                .cornerRadius(30)
            
            // post image
            //            Image(post.image ?? "")
            //                .resizable()  // creates resizable image
            //                // this will allow image to fit the screen width maintaining aspect ratio
            //                .aspectRatio(3/2, contentMode: .fit)
        }
    }
}
