//
//  Update_SUI_UIKit_noViewModelView.swift
//  SUI-UIKit
//
//  Created by Jeytery on 13.08.2022.
//

import SwiftUI

struct Update_SUI_UIKit_noViewModelView: View {
    @State var clicks: Int = 0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.ultraThinMaterial)
            Text(
                String(clicks)
            )
        }
        .onTapGesture {
            print("can udpate @State only from SUI")
            self.clicks += 1
        }
    }
}

struct Update_SUI_UIKit_noViewModelView_Previews: PreviewProvider {
    static var previews: some View {
        Update_SUI_UIKit_noViewModelView()
    }
}
