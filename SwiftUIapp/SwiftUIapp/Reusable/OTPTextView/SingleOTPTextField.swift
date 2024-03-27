//
//  SingleOTPTextField.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 24.03.2024.
//

import SwiftUI

struct SingleOTPTextField: View {
    
    @State var otpValue: String = ""
    var completion: ((String) -> ())?
    var body: some View {
        TextField("", text: $otpValue, onCommit: {
            completion?(otpValue)
        })
        .setOTPFieldModifier()
    }
}

#Preview {
    SingleOTPTextField()
}
