//
//  OTPTextView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 29.02.2024.
//

import SwiftUI

struct OTPTextField: View {
    
    @ObservedObject var pinViewValidator = PinViewValidator()
    @State var enteredValue: [String] = []
    @FocusState var fieldFocus: Int?
    var completion: (() -> ())?
     
    var body: some View {
        HStack(spacing: 15) {
            SingleOTPTextField(otpValue: pinViewValidator.firstField) { value in
                enteredValue.append(value)
            }
            SingleOTPTextField(otpValue: pinViewValidator.secondField)  { value in
                enteredValue.append(value)
            }
            SingleOTPTextField(otpValue: pinViewValidator.thirdField) { value in
                enteredValue.append(value)
            }
            SingleOTPTextField(otpValue: pinViewValidator.fourthField) { value in
                enteredValue.append(value)
            }
        }
    }
}

#Preview {
    OTPTextField()
}
