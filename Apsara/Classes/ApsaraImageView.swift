//
//  CustomizeImageView.swift
//  Apasara
//
//  Created by Rat Mengheang on 1/27/17.


import Foundation

@IBDesignable class ApsaraImageView: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        
        didSet{
            
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet{
            
            layer.borderWidth = borderWidth
        }
        
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.gray {
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var imageColor: UIColor = UIColor.gray {
        didSet{
            self.image = self.image!.withRenderingMode(.alwaysTemplate)
            self.tintColor = imageColor
        }
    }
    
    @IBInspectable var circle: Bool = false {
        didSet{
            layoutSubviews()
        }
    }
    
    override public func layoutSubviews() {
        if circle {
            self.clipsToBounds = true
            self.layer.cornerRadius = self.layer.frame.height/2
        }
    }
    
}
