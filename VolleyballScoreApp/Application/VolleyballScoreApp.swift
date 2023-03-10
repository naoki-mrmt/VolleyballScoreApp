//
//  VolleyballScoreApp.swift
//  VolleyballScoreApp
//
//  Created by naoki-mrmt on 2022/12/30.
//

import SwiftUI
import FirebaseCore

@main
struct VolleyballScoreApp: App {

    // MARK: - init
    init() {
        FirebaseApp.configure()
    }

    // MARK: - Body
    var body: some Scene {
        WindowGroup {
            LaunchView()
        }
    }
}
