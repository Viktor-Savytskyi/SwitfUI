//
//  DetailsView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 27.12.2023.
//

import SwiftUI

struct ValidationView: View {
    let numberTitle = "Введіть код підтвердження"
    let sendToPhone = "Код надіслано на номер"
    let codeSended = "Код відправлено."
    let timerText = "Надіслати код повторно через 00:50"
    let navigationTitle = "Підтвердження"
    var phoneNumber = ""
    var sendedCode: String {
        sendToPhone + " " + phoneNumber
    }
    @State var needToMove: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 55) {
                Spacer()
                BrendView()
                VStack(alignment: .center, spacing: 7) {
                    Text(verbatim: numberTitle)
                        .foregroundStyle(.black)
                        .font(.system(size: 18).bold())
                    Text(verbatim: sendedCode)
                        .foregroundStyle(.black)
                        .font(.system(size: 16).bold())
                }
                .padding(.horizontal, 30)
                OTPTextField(needToMove: $needToMove)
                NavigationLink("", isActive: $needToMove, destination: {
                    OnboardingView()
                })
                .padding()
                VStack(alignment: .center, spacing: 7) {
                    Text(verbatim: codeSended)
                        .foregroundStyle(.red)
                        .font(.system(size: 18).bold())
                    Text(verbatim: timerText)
                        .foregroundStyle(.red)
                        .font(.system(size: 16))
                    
                }
                Spacer()
                    .navigationTitle(navigationTitle)
            }
            .padding(.vertical, 30)
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea(.keyboard)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ValidationView(needToMove: true)
    }
}
