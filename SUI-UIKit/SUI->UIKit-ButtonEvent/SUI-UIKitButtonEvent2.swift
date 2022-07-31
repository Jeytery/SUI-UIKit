//
//  SUI-UIKitButtonEvent2.swift
//  SUI-UIKit
//
//  Created by Jeytery on 31.07.2022.
//

import SwiftUI

struct SUI_UIKitButtonEvent2: View {
    
    @State var emotionIndex = 0
    
    var okButtonDidTap: (Int) -> Void
    
    var body: some View {
        VStack {
            Text("This is SwiftUI View")
            Text("What is your emotion rate for today")
            Picker("What is your emotion for today?", selection: $emotionIndex) {
                Text("0").tag(0)
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
            }
            .pickerStyle(.segmented)
            .padding()
            
            Button("Ok") {
                okButtonDidTap(emotionIndex)
            }
            .frame(width: 200, height: 50)
            .buttonStyle(.bordered)
        }
    }
}

struct SUI_UIKitButtonEvent2_Previews: PreviewProvider {
    static var previews: some View {
        SUI_UIKitButtonEvent2(okButtonDidTap: { _ in })
    }
}
