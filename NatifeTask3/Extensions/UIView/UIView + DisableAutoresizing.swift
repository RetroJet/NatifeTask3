//
//  UIView + DisableAutoresizing.swift
//  NatifeTask3
//
//  Created by Nazar on 31.03.2026.
//

import UIKit

extension UIView {
    func disableAutoresizing(_ views: UIView...) {
        views.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    }
}
