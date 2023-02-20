//
//  UIViewExtension.swift
//  TrendingMovieApp
//
//  Created by Zafer Çalışkan on 20.02.2023.
//

import UIKit

extension UIView {
    func round(_ radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
