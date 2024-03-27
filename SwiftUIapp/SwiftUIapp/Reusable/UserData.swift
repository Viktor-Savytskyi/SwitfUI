//
//  UserData.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 24.12.2023.
//

import SwiftUI

class UserData: ObservableObject {
    @Published var login = ""
    @Published var password = ""
    @Published var selectedRole = 0
}

//struct UserData_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
