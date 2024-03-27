//
//  PinTextField+Modifier.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 25.03.2024.
//

import SwiftUI

struct PinTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .background {
                RoundedRectangle(cornerRadius: 6, style: .continuous).stroke()
            }   
            .padding()
    }
}
