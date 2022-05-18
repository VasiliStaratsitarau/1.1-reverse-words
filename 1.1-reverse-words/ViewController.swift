//
//  ViewController.swift
//  1.1-reverse-words
//
//  Created by Vasili Staratsitarau on 12/05/2022.
//

import UIKit

class ViewController: UIViewController /* UITextFieldDelegate*/ {
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var reverseTextView: UILabel!
    @IBOutlet weak var reverseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputText.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
        reverseButton.layer.cornerRadius = 14
//------------- Button .disabled as default --------------------------------------------
        reverseButton.isEnabled = false
        reverseButton.backgroundColor = UIColor(hex: "#66afffff")
        reverseButton.titleLabel?.font = UIFont(name: "Roboto-Bold", size: 17)
        reverseButton.setTitle("REVERSE IT!", for: .disabled)
        reverseButton.setTitleColor(.white, for: .disabled)
    }
// ------------- waiting text in textfield and acrivate Button --------------------------
    @objc func textChanged(_ textField: UITextField) {
        reverseButton.isEnabled = true
        reverseButton.backgroundColor = UIColor(hex: "#007affff")
        reverseButton.isEnabled = true
        if inputText.text == "" {
            reverseButton.isEnabled = false
            reverseButton.backgroundColor = UIColor(hex: "#66afffff")
        }
    }
// ------------- reverseButton func include switch with two cases -----------------------
    
    @IBAction func reverseButton(_ sender: UIButton) {
        
        switch sender.isSelected == false
        {
        case true :
            if let text = inputText.text {
            reverseTextView.numberOfLines = 0
            reverseTextView.sizeToFit()
            reverseTextView.text = text.split(separator: " ").map { String($0.reversed())}.joined(separator: " ")
            reverseButton.setTitle("Clear", for: .normal)
                sender.isSelected = true
            }
        case false:
            if reverseTextView.text != "" {
            reverseButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 22)
            reverseButton.setTitle("REVERSE IT!", for: .normal)
            inputText.text = ""
            reverseTextView.text = ""
            reverseButton.isEnabled = false
            reverseButton.backgroundColor = UIColor(hex: "#66afffff")
                sender.isSelected = false
            }
        }
    }
}


