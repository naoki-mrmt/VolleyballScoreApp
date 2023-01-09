//
//  MatchResultView.swift
//  VolleyballScoreApp
//
//  Created by naoki-mrmt on 2023/01/02.
//

import SwiftUI

struct MatchResultView: View {
    // TODO: データがないのでダミー。Realmに保存されたデータを表示する
    @State private var repositories: [Repository] = [
        Repository(id: 1, teamName: "あいう大学", gameCount: "2-1", gameResult: true, gameDate: "2023-01-06 17:43:00"),
        Repository(id: 2, teamName: "かきく大学", gameCount: "0-2", gameResult: false, gameDate: "2023-01-08 09:01:00")
    ]

    var body: some View {
        List(repositories) { repository in
            NavigationLink {
                MatchResultDetailView()
            } label: {
                VStack(alignment: .leading) {
                    Text(repository.teamName)
                        .font(.title)
                    Text(repository.gameCount)
                    Text(repository.gameResult ? "勝ち" : "負け")
                    Text("Start: \(repository.gameDate)")
                }
            }
        }
    }
}

struct MatchResultView_Previews: PreviewProvider {
    static var previews: some View {
        MatchResultView().ppi326()
        MatchResultView().ppi264()
    }
}
