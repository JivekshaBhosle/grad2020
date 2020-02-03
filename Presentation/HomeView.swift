
import SwiftUI

struct HomeView: View {
    
    var testData: [ProductViewModel] {
        
        var tmpArray: [ProductViewModel] = []
        
        for index in 0...20 {
            tmpArray.append(ProductViewModel.init(title: "My title \(index)", subTitle: "Dummy subTitle"))
        }
        
        return tmpArray
    }
    
    
    var body: some View {
        NavigationView{
            List {
                Text("Hello, World!")
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(testData) {
                            tmpData in
                            NavigationLink(
                            destination: ProductDetailView(viewModel: tmpData)) {
                                ProductView(viewModel: tmpData)
                            }
                        }
                    }
                }
                
                ForEach(testData) {
                    tmpData in
                    
                    NavigationLink(
                    destination: ProductDetailView(viewModel: tmpData)) {
                        ProductView(viewModel: tmpData)
                    }
                }
                
            }.navigationBarTitle(Text("Welcome to Takealot"))
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
