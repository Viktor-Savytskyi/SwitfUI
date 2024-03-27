//
//  UIView+Extension.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 25.03.2024.
//

import SwiftUI

extension View {
    func setOTPFieldModifier() -> some View{
        self.modifier(PinTextFieldModifier())
    }
}
