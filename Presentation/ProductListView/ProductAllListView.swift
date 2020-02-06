
import SwiftUI

struct ProductAllListView: View {
    
    @ObservedObject var testData = ViewModelHomeView()
    
    var body: some View {
        List{
            ForEach(testData.data) {
                tmpData in
                NavigationLink(
                destination: ProductDetailView(viewModel: ViewModelProductView(data: tmpData))) {
                    ProductListView(viewModel:  ViewModelProductView(data: tmpData))
                }
            }
        }
        .navigationBarTitle(Text("All Deals"))
    }
}
