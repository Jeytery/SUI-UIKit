//
//  Ex2Settings2View.swift
//  SUI-UIKit
//
//  Created by Jeytery on 24.07.2022.
//

import SwiftUI

struct Ex2Settings2View: View {
    var body: some View {
        Form {
            Ex2CellViewRepresentable(title: "Hello from UIKit!")
            Ex2CellViewRepresentable(title: "Hello from Jeytery!")
        }
    }
}

struct Ex2Settings2View_Previews: PreviewProvider {
    static var previews: some View {
        Ex2Settings2View()
    }
}
