//
//  MatchResultRepository.swift
//  VolleyballScoreApp
//
//  Created by oimo on 2023/01/09.
//

import SwiftUI

struct Repository: Codable, Identifiable, Equatable {
    let id: Int
    let otherTeamName: String
    let gameSetCount: String
    let isWon: Bool
    let gameDate: String

    enum CodingKeys: String, CodingKey {
        case id
        case otherTeamName
        case gameSetCount
        case isWon
        case gameDate
    }
}
