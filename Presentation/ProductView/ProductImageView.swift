import SwiftUI

struct ImageView: View {
    @State var image:UIImage = UIImage()
    let url:String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onAppear {
                    guard let url = URL(string: self.url) else { return }
                    URLSession.shared.dataTask(with: url) { (data, response, error) in
                        guard let tmpData = data else { return }
                        guard let tmpImage = UIImage(data: tmpData) else { return }
                        RunLoop.main.perform {
                            self.image = tmpImage
                        }
                        
                    }.resume()
            }
        }
        
        
    }
}
