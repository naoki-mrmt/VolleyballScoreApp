//
//  ImageExtension.swift
//  VolleyballScoreApp
//
//  Created by naoki-mrmt on 2023/01/09.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self.resizable().scaledToFit()
    }
}
