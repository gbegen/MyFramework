//
//  MyView.swift
//
//  Created by Geoffrey C. Begen on 12/22/15.
//
import UIKit

@IBDesignable
public class MyView: UIView {
    @IBInspectable
    public var pathColor: UIColor! {
        didSet {
            setNeedsDisplay()
        }
    }

    @IBInspectable
    public var strokeWidth: CGFloat = 0.0 {
        didSet {
            setNeedsDisplay()
        }
    }

    override public func drawRect(rect: CGRect) {
        let bounds = self.bounds

        if let pathColor = pathColor {
            pathColor.setStroke()
        }

        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: bounds.minX, y: bounds.minY))
        path.addLineToPoint(CGPoint(x: bounds.maxX, y: bounds.maxY))
        path.moveToPoint(CGPoint(x: bounds.minX, y: bounds.maxY))
        path.addLineToPoint(CGPoint(x: bounds.maxX, y: bounds.minY))

        path.lineWidth = strokeWidth

        path.stroke()
    }
}
