//
//  CustomizeTextField.swift
//  Apasara
//
//  Created by Rat Mengheang on 1/27/17.

import Foundation

@IBDesignable class ApsaraTextField: UITextField {
    
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
}

