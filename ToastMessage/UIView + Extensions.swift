//
//  UIView + Extensions.swift
//  ToastMessage
//
//  Created by iOSayed on 09/11/2022.
//

import Foundation
import UIKit

extension UIView {
    func setCornerRadius(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}
