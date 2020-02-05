
import SwiftUI

struct HomeView: View {
    
    @ObservedObject var testData = ViewModelHomeView()
    
    var body: some View {
        NavigationView{
            ScrollView(.horizontal) {
                HStack {
                    ForEach(testData.data) {
                        tmpData in
                        NavigationLink(
                        destination: ProductDetailView(viewModel: ViewModelProductView(data: tmpData))) {
                            ProductView(viewModel:  ViewModelProductView(data: tmpData))
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Takealot Deals"))
            .buttonStyle(PlainButtonStyle())
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
