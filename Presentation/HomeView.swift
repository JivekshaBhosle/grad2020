import SwiftUI

//Home Screen
struct HomeView: View {
   /**
        1) Fix the image for the product. All products load the same image, each should have their respective image.
        2) Add a text for subtitle of each Product.
        3) All Deals is a text. Make it a navigation link to open the ProductDetailView.
        4) Change color for title named "All Deals"
    */
    @ObservedObject var viewModel = ViewModelHomeView()

    init() {
        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }

    var body: some View {
        NavigationView {

            List {

                Text(viewModel.allDeals.title)
                        .foregroundColor(viewModel.allDeals.textColor)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 10) {
                        ForEach(viewModel.data) {
                            tmpData in
                            NavigationLink(
                                    destination: ProductDetailView(viewModel: ViewModelProductView(data: tmpData))) {
                                ProductView(viewModel: ViewModelProductView(data: tmpData))
                            }
                        }
                    }
                }
            }
                    .navigationBarTitle(Text(viewModel.screenTitle))
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
