//
//  HomeView.swift
//  VolleyballScoreApp
//
//  Created by naoki-mrmt on 2022/12/31.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ScoreRegistrationView()
                } label: {
                    Text("スコア登録")
                } //: NavigationLink
                NavigationLink {
                    TeamMemberListView()
                } label: {
                    Text("チームメンバー一覧")
                } //: NavigationLink
                NavigationLink {
                    AttackPatternListView()
                } label: {
                    Text("攻撃パターン一覧")
                } //: NavigationLink
                NavigationLink {
                    MatchResultView()
                } label: {
                    Text("試合結果一覧")
                } //: NavigationLink
                NavigationLink {
                    TeamMemberListView()
                } label: {
                    Text("オンボーディング")
                } //: NavigationLink
            } //: List
            .listStyle(GroupedListStyle())
            .navigationBarTitle("AttackVScore")
        } //: NavigationStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().iPadPro11()
        HomeView().iPadPro12()
    }
}
