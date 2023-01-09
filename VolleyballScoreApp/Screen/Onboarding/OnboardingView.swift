//
//  OnboardingView.swift
//  VolleyballScoreApp
//
//  Created by naoki-mrmt on 2023/01/02.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    var onboarding: [OnboardingRepository] = onboardingData
    let isHidden: Bool

    // MARK: - Initialize
    init(isHidden: Bool = false) {
        self.isHidden = isHidden
    }

    // MARK: - Body
    var body: some View {
        let pageCount = onboarding.count
        TabView {
            ForEach(onboarding) {
                OnboardingCardView(
                    onboarding: $0,
                    pageCount: pageCount,
                    isHidden: isHidden
                )
            } //: ForEach
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .frame(width: UIScreen.main.bounds.width * 0.7)
        .padding(.vertical, 32)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().ppi326()
        OnboardingView().ppi264()
    }
}
