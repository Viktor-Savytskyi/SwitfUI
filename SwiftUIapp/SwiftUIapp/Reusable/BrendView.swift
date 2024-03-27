//
//  BrendView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 29.02.2024.
//

import SwiftUI

struct BrendView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Image("logo")
            Text(verbatim: "корпоративний")
                .textCase(.uppercase)
                .font(.system(size: 24).bold())
                .foregroundStyle(.orange)
        }
    }
}

#Preview {
    BrendView()
}
