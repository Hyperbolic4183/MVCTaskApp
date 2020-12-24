//
//  ExtensionUIView.swift
//  MVCTaskApp
//
//  Created by 大塚周 on 2020/12/18.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach(addSubview(_:))
    }
}
