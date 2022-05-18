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
        isEnabled = true
        titleLabel?.font = UIFont(name: "Roboto-Regular", size: 17)
        backgroundColor = UIColor(hex: "#66afffff")
        setTitle("REVERSE IT!", for: .normal)
        setTitleColor(.white, for: .disabled)
        }
        private func setup() {
    layer.cornerRadius = 14
    }
}

    

