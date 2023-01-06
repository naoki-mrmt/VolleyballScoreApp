//
//  PreviewProviderExtension.swift
//  VolleyballScoreApp
//
//  Created by Naoki Muramoto on 2023/01/02.
//

import SwiftUI

extension View {
    /// ppi326のprevセッティング
    func ppi326() -> some View {
        self
            .previewDevice(PreviewDevice(rawValue: "iPad mini (5th generation)"))
            .previewInterfaceOrientation(.landscapeRight)
            .previewDisplayName("iPad mini")
    }

    /// ppi264のprevセッティング
    func ppi264() -> some View {
        self
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (6th generation)"))
            .previewInterfaceOrientation(.landscapeRight)
            .previewDisplayName("iPad Pro (12.9-inch)")
    }
}
