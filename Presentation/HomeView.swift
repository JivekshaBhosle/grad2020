
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
                    NavigationLink(
                    destination: ProductAllListView()) {
                        Text(" All Deals")
                    }
                })
                    .padding(5)
                    .padding(.horizontal, 7)
                    .foregroundColor(Color.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                
                
                List {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 10) {
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
                .navigationBarTitle(
                    Text("Featured Deals")
                )
                    .buttonStyle(PlainButtonStyle())
            }
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
