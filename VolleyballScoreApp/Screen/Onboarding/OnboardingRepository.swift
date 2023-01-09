//
//  OnboardingRepository.swift
//  VolleyballScoreApp
//
//  Created by naoki-mrmt on 2023/01/09.
//

import SwiftUI

struct OnboardingRepository: Identifiable {
    let id = UUID()
    let pageNumber: Int
    let title: String
    let headline: String
    let imageURL: String
    let gradientColors: [Color]
}
