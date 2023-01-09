//
//  MatchResultListView.swift
//  VolleyballScoreApp
//
//  Created by naoki-mrmt on 2023/01/02.
//

import SwiftUI

struct MatchResultListView: View {
    // TODO: データがないのでダミー。Realmに保存されたデータを表示する
    private let repositories: [MatchResultRepository] = [
        MatchResultRepository(id: 1, otherTeamName: "あいう大学", gameSetCount: "2-1", isWon: true, gameDate: "2023-01-06 17:43:00"),
        MatchResultRepository(id: 2, otherTeamName: "かきく大学", gameSetCount: "0-2", isWon: false, gameDate: "2023-01-08 09:01:00")
    ]

    var body: some View {
        List(repositories) { repository in
            NavigationLink {
                MatchResultDetailView()
            } label: {
                VStack(alignment: .leading) {
                    Text(repository.otherTeamName)
                        .font(.title)
                    Text(repository.gameSetCount)
                    Text(repository.isWon ? "勝ち" : "負け")
                    Text("Start: \(repository.gameDate)")
                }
            }
        }
    }
}

struct MatchResultListView_Previews: PreviewProvider {
    static var previews: some View {
        MatchResultListView().ppi326()
        MatchResultListView().ppi264()
    }
}
