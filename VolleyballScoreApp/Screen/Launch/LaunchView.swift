//
//  LaunchView.swift
//  VolleyballScoreApp
//
//  Created by Naoki Muramoto on 2022/12/31.
//

import SwiftUI

struct LaunchView: View {
    // MARK: - Property Wrappers
    @State private var isLoading = true
    @State private var animationState: AnimationState = .normal

    // MARK: - Properties
    private let logoSize = UIScreen.main.bounds.height * 0.4

    // MARK: - Body
    var body: some View {
        if isLoading {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaleEffect(calculateLogoSize())
                .onAppear { animationTask() }
        } else {
            HomeView()
        }
    }
}

// MARK: - enum
extension LaunchView {
    private enum AnimationState {
        case normal
        case compress
        case expand
    }
}

// MARK: - Method
extension LaunchView {
    private func calculateLogoSize() -> Double {
        switch animationState {
        case .normal:
            return 0.2
        case .compress:
            return 0.18
        case .expand:
            return 10.0
        }
    }

    private func animationTask() {
        Task {
            try await Task.sleep(for: .seconds(0.75))
            withAnimation(.spring()) {
                animationState = .compress
                Task {
                    try await Task.sleep(for: .seconds(0.5))
                    withAnimation(.spring()) {
                        animationState = .expand
                        withAnimation(.interpolatingSpring(
                            mass: 1.0,
                            stiffness: 100.0,
                            damping: 10.0,
                            initialVelocity: 0
                        )) {
                            isLoading = false
                        }
                    }
                }
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
