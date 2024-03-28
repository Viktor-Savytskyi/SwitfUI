//
//  ContentView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 20.12.2023.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var userCreds = UserData()
    
    let roles = ["Admin", "Manager", "User"]
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.2)
            NavigationView {
                VStack(spacing: 50) {
                    VStack(spacing: 20) {
                        BrendView()
                        FieldWithTitleView(enteredText: $userCreds.login, placeHolder: "Enter your Login", topText: "Login")
                        FieldWithTitleView(enteredText: $userCreds.password, placeHolder: "Enter your Password", topText: "Password")
                    }
                    NavigationLink {
                        ValidationView(phoneNumber: userCreds.login)
                    } label: {
                        Text("Login")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    }
                }
                .padding(20)
                .ignoresSafeArea(.keyboard)
            }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
