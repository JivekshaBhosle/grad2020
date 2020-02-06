
import SwiftUI

struct ProductListView: View {
    
    @ObservedObject var testData = ViewModelHomeView()
    
    var body: some View {
            NavigationView{
                List{
                    HStack {
                        ForEach(testData.data) {
                            tmpData in
                            NavigationLink(
                            destination: ProductDetailView(viewModel: ViewModelProductView(data: tmpData))) {
                                ProductView(viewModel:  ViewModelProductView(data: tmpData))
                            }
                        }
                    }
                }.navigationBarTitle(Text("Takealot Deals"))
            }
    }
}
