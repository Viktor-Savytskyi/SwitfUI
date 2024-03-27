//
//  PinTextField+Modifier.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 25.03.2024.
//

import SwiftUI

struct PinTextFieldModifier: ViewModifier {
    
    let viewHeight: CGFloat = 50
    func body(content: Content) -> some View {
        content
            .keyboardType(.numberPad)
            .background(Color.red.opacity(0.1))
            .frame(width: 50, height: viewHeight)
            .clipShape(RoundedRectangle(cornerRadius: viewHeight / 2 ))
            .multilineTextAlignment(.center)
    }
}
