
import SwiftUI

struct HomeView: View {
    
    @ObservedObject var testData = ViewModelHomeView()
    
    init() {
        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                    Button(action: {
                                    
                    }, label: {
                        Text(" All Deals")
                    })
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                
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
                .navigationBarTitle(Text("Featured Deals"))
            }
            .navigationBarTitle(Text("Featured"))
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
