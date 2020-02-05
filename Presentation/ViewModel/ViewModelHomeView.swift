import Foundation

class ViewModelHomeView: ObservableObject {
    
    @Published var data:[ProductObject] = []
    
    init() {
        
        guard let url = Bundle.main.url(forResource: "testCase1", withExtension: "geojson"),
            let data = try? Data(contentsOf: url)
            else { /* Insert error handling here */
                return
        }
        
        do {
            self.data = try JSONDecoder().decode([ProductObject].self, from: data)
        } catch {
            print(error)
        }
        
    }
    
}
