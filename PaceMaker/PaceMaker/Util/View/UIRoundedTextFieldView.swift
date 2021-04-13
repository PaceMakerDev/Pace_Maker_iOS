//
//  UIRoundedTextFieldView.swift
//  PaceMaker
//
//  Created by 허예은 on 2021/04/14.
//

import Foundation
import UIKit

class UIRoundedTextFieldView: UIView {
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 30.0
        self.backgroundColor = UIColor(red: 33/255, green: 39/255, blue: 39/255, alpha: 1)
    }
}
