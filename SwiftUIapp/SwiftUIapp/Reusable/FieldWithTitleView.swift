//
//  FieldWithTitleView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 24.12.2023.
//

import SwiftUI

struct FieldWithTitleView: View {
    @Binding var enteredText: String
    var placeHolder = ""
    var topText = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(verbatim: topText)
                .font(.title2)
            TextField(placeHolder, text: $enteredText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}
