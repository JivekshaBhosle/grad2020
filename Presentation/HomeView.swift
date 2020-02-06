
import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel = ViewModelHomeView()
    
    init() {
        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView {
            
            List {
                NavigationLink(
                destination: ProductAllListView()) {
                    Text("All Deals")
                    .foregroundColor(Color.blue)
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 10) {
                        ForEach(viewModel.data) {
                            tmpData in
                            NavigationLink(
                            destination: ProductDetailView(viewModel: ViewModelProductView(data: tmpData))) {
                                ProductView(viewModel:  ViewModelProductView(data: tmpData))
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Featured Deals"))
            .buttonStyle(PlainButtonStyle())
        }
        .padding()
        
    }
}


#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
