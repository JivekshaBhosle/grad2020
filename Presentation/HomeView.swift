
import SwiftUI

struct HomeView: View {
    
    @ObservedObject var testData = ViewModelHomeView()

    var body: some View {
        NavigationView{
            List {
                Text("Hello, World!")
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(testData.data) {
                            tmpData in
                            NavigationLink(
                            destination: ProductDetailView(viewModel:  ViewModelProductView(data: tmpData))) {
                                ProductView(viewModel:  ViewModelProductView(data: tmpData))
                            }
                        }
                    }
                }
                
//                ForEach(testData) {
//                    tmpData in
//                    
//                    NavigationLink(
//                    destination: ProductDetailView(viewModel: tmpData)) {
//                        ProductView(viewModel: tmpData)
//                    }
//                }
                
            }.navigationBarTitle(Text("Welcome to Takealot"))
        }
    }
    
//    private func getJsonData(_ bundle:Bundle, _ fileName:String) -> [String:Any] {
//        let fileNameArray = fileName.split(separator: ".")
//        guard let pathString = bundle.path(forResource: String(fileNameArray[0]), ofType: String(fileNameArray[1])) else {
//            fatalError("Couldn't read \(fileName) file")
//        }
//
//        guard let jsonString = try? String(contentsOfFile: pathString, encoding: .utf8) else {
//            fatalError("Unable to convert \(fileName) to String")
//        }
//
//        guard let jsonData = jsonString.data(using: .utf8) else {
//            fatalError("Unable to convert \(fileName) to Data")
//        }
//
//        guard let jsonDictionary = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? [String:Any] else {
//            fatalError("Unable to convert \(fileName) to JSON dictionary")
//        }
//
//        return jsonDictionary
//    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
