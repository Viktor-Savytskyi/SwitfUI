//
//  OnboardingViewModel.swift
//  SwiftUIapp
//
//  Created by Віктор Савицький on 30.03.2024.
//

import Foundation

@Observable final class OnboardingViewModel {
    var tabIndex: Int = 0
    
    @ObservationIgnored
    var onboardingModels: [OnboardingPageModel] = [
        OnboardingPageModel(title: "Fuel1", description: "You can charge your car but it is just text text for my app", imageName: "onboarding1"),
        OnboardingPageModel(title: "Fuel2", description: "We changes out text, your car but it is just text text for my app", imageName: "onboarding2"),
        OnboardingPageModel(title: "Fuel3", description: "Some text for filling section text for my app", imageName: "onboarding3")
    ]
    
    func changeButtonTitle() -> Bool {
        onboardingModels.count - 1 == tabIndex
    }
}
