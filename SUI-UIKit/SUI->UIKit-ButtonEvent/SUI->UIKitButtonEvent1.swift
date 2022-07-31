//
//  SUI->UIKitButtonEvent1.swift
//  SUI-UIKit
//
//  Created by Jeytery on 31.07.2022.
//

import SwiftUI

protocol SUI__UIKitButtonEvent1Delegate: AnyObject {
    func didTapOkButton(withEmtional index: Int)
}

struct SUI__UIKitButtonEvent1: View {
    @State var emotionIndex: Int = 0
    
    var delegate: SUI__UIKitButtonEvent1Delegate
    
    var body: some View {
        VStack {
            Text("This is SwiftUI View")
            Text("What is your emotion rate for today")
            Picker("What is your emotion for today?", selection: $emotionIndex) {
                Text("0").tag(0)
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(4)
                Text("4").tag(5)
            }
            .pickerStyle(.segmented)
            .padding()
            
            Button("Ok") {
                delegate.didTapOkButton(withEmtional: emotionIndex)
            }
            .frame(width: 200, height: 50)
            .buttonStyle(.bordered)
        }
    }
}
