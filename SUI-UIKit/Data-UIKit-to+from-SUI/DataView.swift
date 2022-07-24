//
//  DataView.swift
//  SUI-UIKit
//
//  Created by Jeytery on 24.07.2022.
//

import SwiftUI

struct DataView: View {
    let title: String
    
    var body: some View {
        Text(title)
    }
}

struct DataView_Previews: PreviewProvider {
    static var previews: some View {
        DataView(title: "Hello, World!")
    }
}
