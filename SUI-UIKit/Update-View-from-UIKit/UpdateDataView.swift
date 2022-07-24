//
//  UpdateDataView.swift
//  SUI-UIKit
//
//  Created by Jeytery on 24.07.2022.
//

import SwiftUI

class UpdateDataViewModel: ObservableObject {
    @Published var clicks: Int = 0
}

struct UpdateDataView: View {

    @ObservedObject var model: UpdateDataViewModel
    
    var body: some View {
        Text("SwiftUI View")
        Text("Clicks: \(String(model.clicks))")
    }
}

struct UpdateDataView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDataView(
            model: UpdateDataViewModel()
        )
    }
}
