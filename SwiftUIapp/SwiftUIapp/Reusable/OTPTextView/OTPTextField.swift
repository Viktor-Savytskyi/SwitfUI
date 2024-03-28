//
//  OTPTextView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 29.02.2024.
//

import SwiftUI

struct OTPTextField: View {
    
    @ObservedObject var pinViewValidator = PinViewValidator()
    @FocusState var isKeyboardShowing: Bool
    @Binding var needToMove: Bool
     
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ForEach(0..<pinViewValidator.pinCount, id: \.self) { index in
                    SingleOTPTextBox(index: index,
                                     otpString: pinViewValidator.enteredPin,
                                     isKeyboardShowing: isKeyboardShowing)
                }
            }
            .padding(.top, 10)
            .padding(.bottom, 20)
            .background {
                TextField("Enter your name", text: $pinViewValidator.enteredPin.limit(pinViewValidator.pinCount))
                    .frame(width: 1, height: 1)
                    .opacity(0.001)
                    .blendMode(.screen)
                    .focused($isKeyboardShowing)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
            }
            .contentShape(Rectangle())
            .onTapGesture {
                isKeyboardShowing.toggle()
            }
            Button {
                needToMove = true
            } label: {
                Text("Verify")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding(.vertical, 12)
                    .frame(maxWidth: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: 6, style: .continuous)
                            .fill(.blue)

                    }
            }
            .disableWithPpacity(condition: pinViewValidator.enteredPin.count < pinViewValidator.pinCount)
        }
        .padding(.all)
        .toolbar{
            ToolbarItem(placement: .keyboard) {
                Button("Done") {
                    isKeyboardShowing.toggle()
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
    }
}

//#Preview {
//    OTPTextField()
//}

extension View {
    func disableWithPpacity(condition: Bool) -> some View {
        self
            .disabled(condition)
            .opacity(condition ? 0.6 : 1)
    }
}

extension Binding where Value == String {
    func limit(_ length: Int) -> Self {
        if self.wrappedValue.count > length {
            DispatchQueue.main.async {
                self.wrappedValue = String(self.wrappedValue.prefix(length))
            }
        }
        return self
    }
}
