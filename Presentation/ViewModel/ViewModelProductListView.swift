//
// Created by Jiveksha Bhosle on 2020/02/06.
// Copyright (c) 2020 Jiveksha Bhosle. All rights reserved.
//
import Foundation

class ViewModelProductListView: ObservableObject {

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
