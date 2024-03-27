//
//  DetailsView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 27.12.2023.
//

import SwiftUI

struct ValidationView: View {
    
    let pinCount = 4
    
    var body: some View {
        VStack(spacing: 65) {
            BrendView()
            VStack(alignment: .center, spacing: 7) {
                Text(verbatim: "Введіть код підтвердження")
                    .foregroundStyle(.red)
                    .font(.system(size: 18).bold())
                Text(verbatim: "Код надіслано на номер 067 000 00  00")
                    .foregroundStyle(.black)
                    .font(.system(size: 16))
            }

            .padding(.leading, 30)
            .padding(.trailing, 30)
            .background(.pink)
            OTPTextField()
            VStack(alignment: .center, spacing: 7) {
                Text(verbatim: "Код відправлено.")
                    .foregroundStyle(.red)
                    .font(.system(size: 18).bold())
                Text(verbatim: "Надіслати код повторно через 00:50")
                    .foregroundStyle(.red)
                    .font(.system(size: 16))

            }
            Spacer()
            .navigationTitle("Navigation")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ValidationView()
    }
}
