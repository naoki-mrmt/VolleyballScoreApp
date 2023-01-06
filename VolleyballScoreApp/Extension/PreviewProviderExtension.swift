//
//  PreviewProviderExtension.swift
//  VolleyballScoreApp
//
//  Created by Naoki Muramoto on 2023/01/02.
//

import SwiftUI

extension View {
    /// ppi000のprevセッティング
    func iPadPro11() -> some View {
        self
            .previewDevice(PreviewDevice(rawValue: "iPad mini (5th generation)"))
            .previewInterfaceOrientation(.landscapeRight)
            .previewDisplayName("iPad mini")
    }

    /// ppi000のprevセッティング
    func iPadPro12() -> some View {
        self
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)"))
            .previewInterfaceOrientation(.landscapeRight)
            .previewDisplayName("iPad Pro (12.9-inch)")
    }
}
