
import SwiftUI

struct ProductAllListView: View {
    
    let viewModel: ViewModelProductListView
    
    var body: some View {
        List{
            ForEach(viewModel.data) {
                tmpData in
                NavigationLink(
                destination: ProductDetailView(viewModel: ViewModelProductView(data: tmpData))) {
                    ProductListView(viewModel:  ViewModelProductView(data: tmpData))
                }
            }
        }
        .navigationBarTitle(Text(viewModel.screenTitle))
    }
}
