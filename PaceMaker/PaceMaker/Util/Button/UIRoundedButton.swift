//
//  UIRoundedPrimaryButton.swift
//  PaceMaker
//
//  Created by 허예은 on 2021/04/14.
//

import Foundation
import UIKit

class UIRoundedPrimaryButton: UIButton{
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 12.0
        self.backgroundColor = UIColor(red: 48/255, green: 212/255, blue: 211/255, alpha: 1)
        self.tintColor = UIColor.white
    }
}

class UIRoundedSecondaryButton: UIButton{
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 12.0
        self.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        self.tintColor = UIColor.white
    }
}
