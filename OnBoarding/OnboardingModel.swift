//
//  OnboardingModel.swift
//  MathIQ
//
//  Created by Preeti NK on 13/02/24.
//

import SwiftUI

struct OnboardingModel: Identifiable, Hashable {
    let id = UUID().uuidString
    let bImage: String
    let cImage: String
    let title: String
    let headline: String
}

let onBoardingData = [
    OnboardingModel(bImage: "onboardingb", cImage: "onboarding1.2", title: "Welcome to Math & Quiz Fun!", headline: "Let's get started and help your child increase their IQ through engaging content!"),
    OnboardingModel(bImage: "onboardingb", cImage: "onboarding2.2", title: "Mathematics Section", headline: "Learn counting, addition, subtraction, multiplication, division, fractions,and more!"),
    OnboardingModel(bImage: "onboardingb", cImage: "onboardind3.2", title: "Games Section", headline: "Play popular games like Mills and 2048 with educational elements that reinforce math concepts"),
    OnboardingModel(bImage: "onboardingb", cImage: "onboarding4..2", title: "Earn Points & Maximise Learning", headline: "Complete lessons and play games to earn points. See your total and rank on the leaderboard in the settings "),
    OnboardingModel(bImage: "onboardingb", cImage: "onboarding5.2", title: "Welcome to Math & Quiz Fun!", headline: "Let's get started and help your child increase their IQ through engaging content!")
]
