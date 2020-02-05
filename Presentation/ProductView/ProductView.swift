
import SwiftUI
import URLImage

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
                                
                ImageView.init(url: viewModel.data.full)

                // post content - specify nil for multi-line text
                Text(viewModel.data.subtitle ?? "").lineLimit(nil).font(.caption)
            }
            .frame(width: 200, height: 200)
            .background(Color.purple)
                .padding(7)  // spacing from left edge of the view
                .padding(.trailing, 7)// spacing from right edge of the view
                .cornerRadius(30)
            
            
   
            
//            URLImage(URL.init(string: viewModel.data.full)!, placeholder: {
//                ProgressView($0) { progress in
//                    ZStack {
//                        if progress > 0.0 {
//                            // The download has started. CircleProgressView displays the progress.
//                            CircleProgressView(progress).stroke(lineWidth: 8.0)
//                        }
//                        else {
//                            // The download has not yet started. CircleActivityView is animated activity indicator that suits this case.
//                            CircleActivityView().stroke(lineWidth: 50.0)
//                        }
//                    }
//                }
//                    .frame(width: 50.0, height: 50.0)
//            })
            
//            // post image
//            URLImage(url: URL.init(string: viewModel.data.full))
//                .frame(minWidth: 100.0, maxWidth: 100.0, minHeight: 100.0, maxHeight: 100.0)
//                .clipped()
            //            Image(post.image ?? "")
            //                .resizable()  // creates resizable image
            //                // this will allow image to fit the screen width maintaining aspect ratio
            //                .aspectRatio(3/2, contentMode: .fit)
        }
    }
}
