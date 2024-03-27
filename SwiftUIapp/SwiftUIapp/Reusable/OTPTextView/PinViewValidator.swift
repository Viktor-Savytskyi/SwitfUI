//
//  PinViewValidator.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 25.03.2024.
//

import SwiftUI

class PinViewValidator: ObservableObject {
    let pinCount = 4
   @Published var enteredPin: String = ""
}
