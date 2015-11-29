//
//  RadioButton.swift
//  RadioButton
//
//  Created by Joe Amanse on 19/11/2015.
//  Copyright © 2015 Joe Christopher Paul Amanse. All rights reserved.
//

import UIKit

@IBDesignable
public class RadioButton: UIButton {
    // MARK: Circle properties
    internal var circleLayer = CAShapeLayer()
    internal var fillCircleLayer = CAShapeLayer()
    
    @IBInspectable public var circleColor: UIColor = UIColor.redColor() {
        didSet {
            circleLayer.strokeColor = circleColor.CGColor
        }
    }
    @IBInspectable public var fillCircleColor: UIColor = UIColor.greenColor() {
        didSet {
            loadFillCircleState()
        }
    }
    
    @IBInspectable public var circleLineWidth: CGFloat = 2.0 {
        didSet {
            layoutCircleLayers()
        }
    }
    @IBInspectable public var fillCircleGap: CGFloat = 2.0 {
        didSet {
            layoutCircleLayers()
        }
    }
    
    internal var circleRadius: CGFloat {
        let width = bounds.width
        let height = bounds.height
        
        let length = width > height ? height : width
        return (length - circleLineWidth) / 2
    }
    
    private var circleFrame: CGRect {
        let width = bounds.width
        let height = bounds.height
        
        let radius = circleRadius
        let x: CGFloat
        let y: CGFloat
        
        if width > height {
            y = circleLineWidth / 2
            x = (width / 2) - radius
        } else {
            x = circleLineWidth / 2
            y = (height / 2) - radius
        }
        
        let diameter = 2 * radius
        return CGRect(x: x, y: y, width: diameter, height: diameter)
    }
    
    private var circlePath: UIBezierPath {
        return UIBezierPath(ovalInRect: circleFrame)
    }
    
    private var fillCirclePath: UIBezierPath {
        let trueGap = fillCircleGap + (circleLineWidth / 2)
        return UIBezierPath(ovalInRect: CGRectInset(circleFrame, trueGap, trueGap))
    }
    
    // MARK: Initialization
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInitialization()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        customInitialization()
    }
    
    private func customInitialization() {
        circleLayer.frame = bounds
        circleLayer.lineWidth = circleLineWidth
        circleLayer.fillColor = UIColor.clearColor().CGColor
        circleLayer.strokeColor = circleColor.CGColor
        layer.addSublayer(circleLayer)
        
        fillCircleLayer.frame = bounds
        fillCircleLayer.lineWidth = circleLineWidth
        fillCircleLayer.fillColor = UIColor.clearColor().CGColor
        fillCircleLayer.strokeColor = UIColor.clearColor().CGColor
        layer.addSublayer(fillCircleLayer)
        
        loadFillCircleState()
    }
    
    // MARK: Layout
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        layoutCircleLayers()
    }
    
    private func layoutCircleLayers() {
        circleLayer.frame = bounds
        circleLayer.lineWidth = circleLineWidth
        circleLayer.path = circlePath.CGPath
        
        fillCircleLayer.frame = bounds
        fillCircleLayer.lineWidth = circleLineWidth
        fillCircleLayer.path = fillCirclePath.CGPath
    }
    
    // MARK: Selection
    override public var selected: Bool {
        didSet {
            loadFillCircleState()
        }
    }
    
    // MARK: Custom
    private func loadFillCircleState() {
        if self.selected {
            fillCircleLayer.fillColor = fillCircleColor.CGColor
        } else {
            fillCircleLayer.fillColor = UIColor.clearColor().CGColor
        }
    }
    
    // MARK: Interface builder
    override public func prepareForInterfaceBuilder() {
        customInitialization()
    }
}