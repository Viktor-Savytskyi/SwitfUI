//
//  OnboardingView.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 28.03.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActiove: Bool = true
    
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20) {
                Spacer()
                VStack {
                    Text("Fuel")
                        .font(.system(size: 50).bold())
                        .foregroundStyle(.white)
                        .toolbar(.hidden, for: .navigationBar)
                    Text(verbatim: """
                You can charge your car
                but it is just text text
                for my app"
                """)
                    .multilineTextAlignment(.center)
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 10)
                }
                
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 300, height: 300, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 300, height: 300, alignment: .center)
                    }
                    Image("onboarding1")
                        .resizable()
                        .scaledToFit()
                        .offset(x: 15, y: 15)
                }
                ZStack {
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2)).padding(8)
                    Text(verbatim: "Next")
                        .font(.system(size: 30).bold())
                }
                .frame(height: 80, alignment: .center)
                .padding()
               
            }
        }
       
    }
}

#Preview {
    OnboardingView()
}
