import SwiftUI

struct ImageView: View {
    @State private var image:UIImage = UIImage()
    let url:String
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 100, alignment: .center)
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
