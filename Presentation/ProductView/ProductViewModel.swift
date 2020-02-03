
import SwiftUI

struct ProductViewModel: Identifiable {
    
    /// unique id
    var id: String = UUID().uuidString
    
    /// title
    let title: String
    
    /// subTitle
    let subTitle: String?
    
    /// Init
    init(title: String, subTitle: String) {
        self.title = title
        self.subTitle = subTitle
    }
}
