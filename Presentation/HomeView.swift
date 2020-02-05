
import SwiftUI

struct HomeView: View {
    
    @ObservedObject var testData = ViewModelHomeView()
    
    init() {
        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }

    var body: some View {
    
        NavigationView {
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(testData.data) {
                            tmpData in
                            NavigationLink(
                            destination: ProductDetailView(viewModel: ViewModelProductView(data: tmpData))) {
                                ProductView(viewModel:  ViewModelProductView(data: tmpData))
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Featured"))
        }
    }
    
    //    var body : some View{
    //        NavigationView{
    //            Text("Featured Deals")
    //                .font(.headline)
    //                .padding(.leading, 15)
    //                .padding(.top, 5)
    //
    //            ScrollView(.horizontal, showsIndicators: false) {
    //                HStack(alignment: .top, spacing: 0) {
    //                    ForEach(testData.data) {
    //                        tmpData in
    //                        NavigationLink(
    //                        destination: ProductDetailView(viewModel: ViewModelProductView(data: tmpData))) {
    //                            ProductView(viewModel:  ViewModelProductView(data: tmpData))
    //                        }
    //                    }
    //                }
    //            }
    //        }
    //    }
    
    //    .scaledToFill()
    //               .clipped()
    
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
