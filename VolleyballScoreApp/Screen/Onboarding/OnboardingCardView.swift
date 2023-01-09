//
//  OnboardingCardView.swift
//  VolleyballScoreApp
//
//  Created by Naoki Muramoto on 2023/01/09.
//

import SwiftUI

struct OnboardingCardView: View {
    // MARK: - Properties
    let onboarding: OnboardingRepository
    let isLastPage: Bool
    let isHidden: Bool

    // MARK: - Initialize
    init(onboarding: OnboardingRepository, pageCount: Int, isHidden: Bool) {
        self.onboarding = onboarding
        self.isLastPage = onboarding.pageNumber == pageCount
        self.isHidden = isHidden
    }

    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(onboarding.imageURL).imageModifier().frame(width: 250, height: 250, alignment: .center)
                Text(onboarding.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    // TODO: add shadow color
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                Text(onboarding.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                if isLastPage { OnboardingButtonView(isHidden: isHidden) }
            } //: VStack
        } //: ZStack
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: onboarding.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}
