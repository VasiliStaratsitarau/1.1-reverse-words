//
//  ChildButton.swift
//  1.1-reverse-words
//
//  Created by Vasili Staratsitarau on 17/05/2022.
//

import UIKit

class ChildButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
        isEnabled = false
        backgroundColor = UIColor(hex: "#66afffff")
        titleLabel?.font = UIFont(name: "Roboto-Regular", size: 17)
        setTitle("REVERSE IT!", for: .normal)
        setTitleColor(.white, for: .disabled)
    }
    private func setup() {
        layer.cornerRadius = 14
    }
    func buttonEnable() {
        isEnabled = true
        backgroundColor = UIColor(hex: "#007affff")
    }
    func buttonDisable() {
        isEnabled = false
        backgroundColor = UIColor(hex: "#66afffff")
    }
}

    

