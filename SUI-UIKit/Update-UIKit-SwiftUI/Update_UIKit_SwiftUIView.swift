//
//  Update_UIKit_SwiftUIView.swift
//  SUI-UIKit
//
//  Created by Jeytery on 31.07.2022.
//

import SwiftUI

class Update_UIKit_SwiftUIViewDelegate: ObservableObject {
    @Published var text: String = ""
}

struct Update_UIKit_SwiftUIView: View {
    @ObservedObject var delegate: Update_UIKit_SwiftUIViewDelegate
    
    var body: some View {
        TextField("Enter text", text: $delegate.text)
    }
}

struct Update_UIKit_SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Update_UIKit_SwiftUIView(delegate: Update_UIKit_SwiftUIViewDelegate())
    }
}
