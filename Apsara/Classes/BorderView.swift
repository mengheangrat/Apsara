//
//  SetBorderView.swift
//  TGM
//
//  Created by Rat Mengheang on 1/27/17.
//  Copyright © 2017 Nanita Tech Co., Ltd. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable public class BorderVeiw: UIView {
    
    fileprivate func _getOneSidedBorder(frame: CGRect, color: UIColor) -> CALayer {
        let border:CALayer = CALayer()
        border.frame = frame
        border.backgroundColor = color.cgColor
        return border
    }
    
    fileprivate func _getViewBackedOneSidedBorder(frame: CGRect, color: UIColor) -> UIView {
        let border:UIView = UIView.init(frame: frame)
        border.backgroundColor = color
        return border
    }
    

    
    @IBInspectable var top: Bool = false {
        didSet{
            layoutSubviews()
        }
    }
    
   
    
    @IBInspectable var left: Bool = false {
        didSet{
            layoutSubviews()
        }
    }
    
    @IBInspectable var right: Bool = false {
        didSet{
            layoutSubviews()
        }
    }
    
    @IBInspectable var buttom: Bool = false {
        didSet{
            layoutSubviews()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            layoutSubviews()
        }
    }
    
    @IBInspectable var color: UIColor = UIColor.gray {
        didSet{
            layoutSubviews()
        }
    }
    
    override public func layoutSubviews() {
        
        
        if buttom {
            let border: CALayer = _getOneSidedBorder(frame: CGRect(x: 0 + 0,
                                                                   y: self.frame.size.height-borderWidth-0,
                                                                   width: self.frame.size.width - 0 - 0+100, height: borderWidth), color: color)
            self.layer.addSublayer(border)
        }
        
        if top {
            let border: CALayer = _getOneSidedBorder(frame: CGRect(x: 0 + 0,
                                                                   y: 0 + 0,
                                                                   width: self.frame.size.width - 0 - 0 + 100,
                                                                   height: borderWidth), color: color)
            self.layer.addSublayer(border)
        }
        
        if right {
            let border: CALayer = _getOneSidedBorder(frame: CGRect(x: self.frame.size.width-borderWidth-0,
                                                                   y: 0 + 0, width: borderWidth,
                                                                   height: self.frame.size.height - 0 - 0), color: color)
            self.layer.addSublayer(border)
        }
        
        if left {
            let border: CALayer = _getOneSidedBorder(frame: CGRect(x: 0 + 0,
                                                                   y: 0 + 0,
                                                                   width: borderWidth,
                                                                   height: self.frame.size.height - 0 - 0), color: color)
            self.layer.addSublayer(border)
        }
        
    }
    
}
