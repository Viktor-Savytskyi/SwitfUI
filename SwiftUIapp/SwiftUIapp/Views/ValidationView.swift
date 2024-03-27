//
//  DetailsView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 27.12.2023.
//

import SwiftUI

struct ValidationView: View {
    
    var body: some View {
        if #available(iOS 15, *) {
            VStack(spacing: 65) {
                BrendView()
                VStack(alignment: .center, spacing: 7) {
                    Text(verbatim: "Введіть код підтвердження")
                        .foregroundStyle(.black)
                        .font(.system(size: 18).bold())
                    Text(verbatim: "Код надіслано на номер 067 000 00  00")
                        .foregroundStyle(.black)
                        .font(.system(size: 16).bold())
                }
                .padding(.horizontal, 30)
                OTPTextField()
                    .padding()
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
            .padding(.vertical, 20)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(.hidden, for: .navigationBar)
        } else {
            VStack(spacing: 65) {
                BrendView()
                VStack(alignment: .center, spacing: 7) {
                    Text(verbatim: "Введіть код підтвердження")
                        .foregroundStyle(.black)
                        .font(.system(size: 18).bold())
                    Text(verbatim: "Код надіслано на номер 067 000 00  00")
                        .foregroundStyle(.black)
                        .font(.system(size: 16).bold())
                }
                .padding(.horizontal, 30)
                OTPTextField()
                    .padding()
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
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden, for: .navigationBar)
            }
            .padding(.vertical, 20)
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ValidationView()
    }
}
