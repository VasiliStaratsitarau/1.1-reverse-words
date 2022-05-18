//
//  ViewController.swift
//  1.1-reverse-words
//
//  Created by Vasili Staratsitarau on 12/05/2022.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var reverseTextView: UILabel!
    @IBOutlet weak var reverseButton: ChildButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      inputText.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
        }
//------------- waiting text in textfield and acrivate Button --------------------------
    @objc func textChanged(_ textField: UITextField) {
        reverseButton.isEnabled = true
        reverseButton.backgroundColor = UIColor(hex: "#007affff")
        if inputText.text == "" {
            reverseButton.isEnabled = false
            reverseButton.backgroundColor = UIColor(hex: "#66afffff")
        }
    }
// ------------- reverseButton func include switch with two cases -----------------------
    @IBAction func reverseButton(_ sender: ChildButton) {
        switch sender.isSelected == false
        {
        case true :
            if let text = inputText.text {
            reverseTextView.text = text.split(separator: " ").map { String($0.reversed())}.joined(separator: " ")
            reverseButton.setTitle("Clear", for: .normal)
            sender.isSelected = true
            }
        case false:
            if reverseTextView.text != "" {
            inputText.text = ""
            reverseTextView.text = ""
            reverseButton.isEnabled = false
            reverseButton.setTitle("REVERSE IT!", for: .normal)
            reverseButton.backgroundColor = UIColor(hex: "#66afffff")
            sender.isSelected = false
            }
        }
    }
}


