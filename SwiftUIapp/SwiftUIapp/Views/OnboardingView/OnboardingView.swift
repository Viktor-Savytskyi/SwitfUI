//
//  OnboardingView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 28.03.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActiove: Bool = true
    @Bindable var onboardingViewModel = OnboardingViewModel()
    
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20) {
                Spacer()
                TabView(selection: $onboardingViewModel.tabIndex) {
                                ForEach(0..<onboardingViewModel.onboardingModels.count, id: \.self) { index in
                                    OnboardingPageView(onboardingPage: onboardingViewModel.onboardingModels[index]).tag(index)
                                }
                            }
                .tabViewStyle(.page(indexDisplayMode: .never))
                PageControl(numberOfPages: 3, current: onboardingViewModel.tabIndex)
                    .frame(width: 200, height: 50)
                ZStack {
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2)).padding(8)
                    Button(onboardingViewModel.changeButtonTitle() ? "moveNext" : "Next") {
                        if onboardingViewModel.changeButtonTitle() {
                            print("move to next screen")
                        } else {
                            onboardingViewModel.tabIndex += 1
                            print(onboardingViewModel.tabIndex)
                        }
                    }
                    .font(.system(size: 30).bold())
                }
                .frame(height: 80, alignment: .center)
                .padding()
            }
            .animation(.easeInOut, value: UUID())
        }
    }
}

#Preview {
    OnboardingView()
}
