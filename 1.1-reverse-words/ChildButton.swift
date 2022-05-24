//
//  ChildButton.swift
//  1.1-reverse-words
//
//  Created by Vasili Staratsitarau on 17/05/2022.
//

import UIKit

class ChildButton: UIButton {
    private enum Constant {
        static let enabledColor = UIColor(hex: "#007affff")
        static let disabledColor = UIColor(hex: "#66afffff")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI() {
        layer.cornerRadius = 14
        isEnabled = false
        backgroundColor = Constant.disabledColor
        titleLabel?.font = UIFont(name: "Roboto-Regular", size: 17)
        setTitle("REVERSE IT!", for: .normal)
        setTitleColor(.white, for: .disabled)
    }
    
    func configure(isEnabled: Bool) {
        self.isEnabled = isEnabled
    }
    
    override var isEnabled: Bool {
        didSet {
            if isEnabled {
                backgroundColor = Constant.enabledColor
            } else {
                backgroundColor = Constant.disabledColor
            }
        }
    }
}



