//
//  OnboardingButtonView.swift
//  VolleyballScoreApp
//
//  Created by Naoki Muramoto on 2023/01/09.
//

import SwiftUI

struct OnboardingButtonView: View {
    // MARK: - Property Wrappers
    // swiftlint:disable discouraged_optional_boolean
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // swiftlint:enable discouraged_optional_boolean
    // MARK: - Properties
    let isHidden: Bool
    private let arrowCircle = "arrow.right.circle"

    // MARK: - Body
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: arrowCircle)
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        } //: Button
        .accentColor(.white)
        .opacity(isHidden ? 0 : 1)
    }
}
