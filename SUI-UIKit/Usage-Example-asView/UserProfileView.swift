//
//  UserProfileView.swift
//  SUI-UIKit
//
//  Created by Jeytery on 24.07.2022.
//

import SwiftUI

struct User {
    var name: String
    let secondName: String
    let rate: Int
    let isPro: Bool
    
    static let zero = User(name: "1", secondName: "2", rate: 0, isPro: false)
}

class UserProfileViewViewModel: ObservableObject {
    @Published var user: User
    
    init(user: User) {
        self.user = user
    }
}

struct UserProfileView: View {
    
    @ObservedObject var viewModel = UserProfileViewViewModel(user: .zero)
    
    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.1)
            VStack {
                HStack {
                    Image("cat")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .scaledToFit()
                        .clipShape(
                            Circle()
                        )
                    VStack {
                        Text(viewModel.user.name)
                        Text(viewModel.user.secondName)
                    }
                    Spacer()
                }
                
                HStack {
                    HStack {
                        Text(
                            String(viewModel.user.rate)
                        )
                            .foregroundColor(.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(
                                Color(.systemYellow)
                            )
                    }
                    
                    Spacer()
                    if viewModel.user.isPro {
                        ZStack {
                            Color(.systemOrange)
                                .frame(width: 80, height: 30)
                                .clipShape(Capsule())
                            Text("PRO")
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            .padding()
        }
        .cornerRadius(20)
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
