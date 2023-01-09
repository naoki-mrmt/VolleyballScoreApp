//
//  MatchResultRepository.swift
//  VolleyballScoreApp
//
//  Created by oimo on 2023/01/09.
//

import SwiftUI

struct Repository: Codable, Identifiable, Equatable {
    let id: Int
    let teamName: String
    let gameCount: String
    let gameResult: Bool
    let gameDate: String

    enum CodingKeys: String, CodingKey {
        case id
        case teamName
        case gameCount
        case gameResult
        case gameDate
    }
}
