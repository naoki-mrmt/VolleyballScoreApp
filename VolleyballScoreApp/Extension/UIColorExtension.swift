//
//  UIColorExtension.swift
//  VolleyballScoreApp
//
//  Created by naoki-mrmt on 2023/01/09.
//

import UIKit

extension UIColor {
    class var primaryColor: UIColor {
        UIColor(named: "Primary") ?? UIColor.clear
    }

    class var backgroundColor: UIColor {
        UIColor(named: "Background") ?? UIColor.clear
    }

    class var shadowColor: UIColor {
        UIColor(named: "Shadow") ?? UIColor.clear
    }
}
