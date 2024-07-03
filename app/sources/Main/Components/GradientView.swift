//
//  GradientView.swift
//  SimpleName
//
//  Created by Stanislav Lemeshaev on 13.06.2024.
//  Copyright © 2024 iOS Diving. All rights reserved.
//

import UIKit

class GradientView: UIView {
    // MARK: - Interface
    /// Gradient start color
    var startColor: UIColor = .white {
        didSet {
            updateColors()
        }
    }
    
    /// Gradient end color
    var endColor: UIColor = .blue {
        didSet {
            updateColors()
        }
    }
    
    /// Start of the gradient
    var startLocation: CGFloat = 0 {
        didSet {
            updateLocations()
        }
    }
    
    /// End of the gradient
    var endLocation: CGFloat = 1 {
        didSet {
            updateLocations()
        }
    }
    
    /// Gradient start point
    var startPoint: CGPoint = .zero {
        didSet {
            updateStartPoint()
        }
    }
    
    /// Gradient end point
    var endPoint: CGPoint = CGPoint(x: 0, y: 1) {
        didSet {
            updateEndPoint()
        }
    }
    
    // MARK: - Properties
    private var gradientLayer: CAGradientLayer {
        return layer as! CAGradientLayer
    }
    
    override static var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    // MARK: - Private
    private func updateLocations() {
        gradientLayer.locations = [startLocation as NSNumber, endLocation as NSNumber]
    }
    
    private func updateColors() {
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
    }
    
    private func updateStartPoint() {
        gradientLayer.startPoint = startPoint
    }
    
    private func updateEndPoint() {
        gradientLayer.endPoint = endPoint
    }
}
