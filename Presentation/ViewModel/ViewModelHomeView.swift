import Foundation
import SwiftUI

class ViewModelHomeView: ObservableObject {
    
    @Published var data:[ProductObject] = []

    let screenTitle = "Featured Deals"
    var allDeals = (title: "All Deals", textColor: Color.red, viewModel: ViewModelProductListView())
    
    init() {
        
        guard let url = Bundle.main.url(forResource: "testCase1", withExtension: "geojson"),
            let data = try? Data(contentsOf: url)
            else { /* Insert error handling here */
                return
        }
        
        do {
            self.data = try JSONDecoder().decode([ProductObject].self, from: data)
            self.allDeals.viewModel.data = self.data
        } catch {
            print(error)
        }
        
    }
    
}
