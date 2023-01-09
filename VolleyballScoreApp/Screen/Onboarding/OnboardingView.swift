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
            ForEach(onboarding[0 ..< pageCount]) { item in
                OnboardingCardView(onboarding: item, pageCount: pageCount, isHidden: isHidden)
            } //: ForEach
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().ppi326()
        OnboardingView().ppi264()
    }
}
