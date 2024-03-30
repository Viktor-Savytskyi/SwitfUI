//
//  OnboardingPageView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 30.03.2024.
//

import SwiftUI

struct OnboardingPageView: View {
    
    var onboardingPage: OnboardingPageModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text(onboardingPage.title)
                .font(.system(size: 50).bold())
                .foregroundStyle(.white)
                .toolbar(.hidden, for: .navigationBar)
            Text(verbatim: onboardingPage.description)
            .multilineTextAlignment(.center)
            .font(.title3)
            .foregroundStyle(.white)
            .padding(.horizontal, 10)
            
            ZStack {
                ZStack {
                    Circle()
                        .stroke(.white.opacity(0.2), lineWidth: 40)
                        .frame(width: 300, height: 300, alignment: .center)
                    Circle()
                        .stroke(.white.opacity(0.2), lineWidth: 80)
                        .frame(width: 300, height: 300, alignment: .center)
                }
                Image(onboardingPage.imageName)
                    .resizable()
                    .scaledToFit()
                    .offset(x: 15, y: 15)
            }
        }
        .padding()
    }
}

#Preview {
    OnboardingPageView(onboardingPage: OnboardingPageModel(title: "", description: "", imageName: ""))
}
