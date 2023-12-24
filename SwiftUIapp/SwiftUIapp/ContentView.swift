//
//  ContentView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 20.12.2023.
//

import SwiftUI

struct ContentView: View {
    let roles = ["Admin", "Manager", "User"]
    @ObservedObject var userCreds = UserData()

    var body: some View {
        ZStack {
            Image("background").opacity(0.2)
            VStack(spacing: 50) {
                VStack(spacing: 20) {
                    Image(systemName: "person.circle.fill")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    FieldWithTitleView(enteredText: $userCreds.login, placeHolder: "Enter your Login", topText: "Custom Login")
                    FieldWithTitleView(enteredText: $userCreds.password, placeHolder: "Enter your Password", topText: "Custom Password")
                    
                    VStack(spacing: 20) {
                        Picker(selection: $userCreds.selectedRole) {
                            ForEach(0 ..< roles.count) {                            Text(roles[$0])
                            }
                        } label: {
                            
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        
                    }
                }
                    Button {
                        print("login = \(userCreds.login)")
                        print("password = \(userCreds.password)")
                        print("selectedRole = \(userCreds.selectedRole)")
                    } label: {
                        Text("Login Button")
                    }
                    .frame(width: 200)
                    .padding()
                    .background(Color.orange)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                }
            .padding(60)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
