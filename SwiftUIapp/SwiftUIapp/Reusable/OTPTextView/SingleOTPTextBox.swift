//
//  SingleOTPTextField.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 24.03.2024.
//

import SwiftUI

struct SingleOTPTextBox: View {
    
    @State var index: Int = 0
    var otpString: String = ""
    var isKeyboardShowing: Bool = false
    
    var body: some View {
        ZStack {
            if otpString.count > index {
                let startIndex = otpString.startIndex
                let charIndex = otpString.index(startIndex, offsetBy: index)
                let charToString = String(otpString[charIndex])
                Text(charToString)
            } else {
                Text("")
            }
        }
        .frame(width: 35, height: 35)
        .padding()
        .background {
            let status = (isKeyboardShowing && otpString.count == index)
            RoundedRectangle(cornerRadius: 6, style: .continuous)
                .stroke(status ? .black : .gray,
                        lineWidth: status ? 1 : 0.5)
                .animation(.easeInOut(duration: 0.2), value: status)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    SingleOTPTextBox()
}
