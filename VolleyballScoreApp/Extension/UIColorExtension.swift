//
//  UIColorExtension.swift
//  VolleyballScoreApp
//
//  Created by naoki-mrmt on 2023/01/09.
//

import UIKit

extension UIColor {
    class var primaryColor: UIColor {
        UIColor(named: "Primary") ?? .clear
    }

    class var secondaryColor: UIColor {
        UIColor(named: "Secondary") ?? .clear
    }

    class var backgroundColor: UIColor {
        UIColor(named: "Background") ?? .clear
    }

    class var shadowColor: UIColor {
        UIColor(named: "Shadow") ?? .clear
    }
}
