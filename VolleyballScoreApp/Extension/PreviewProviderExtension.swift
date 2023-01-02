//
//  PreviewProviderExtension.swift
//  VolleyballScoreApp
//
//  Created by Naoki Muramoto on 2023/01/02.
//

import SwiftUI

extension View {
    /// iPad Pro 11inch用のprevセッティング
    func iPadPro11() -> some View {
        self
            .previewDisplayName("iPad Pro (11-inch)")
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
            .previewInterfaceOrientation(.landscapeRight)
    }

    /// iPad Pro 12.9inch用のprevセッティング
    func iPadPro12() -> some View {
        self
            .previewDisplayName("iPad Pro (12.9-inch)")
            .previewDevice("iPad Pro (12.9-inch) (6th generation)")
            .previewInterfaceOrientation(.landscapeRight)
    }
}
