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
            reverseButton.configure(isEnabled: true)
        if inputText.text == "" {
            reverseButton.configure(isEnabled: false)
        }
    }
// ------------- reverseButton func include switch with two cases -----------------------
    var isButtonStart = true
    @IBAction func reverseButton(_ sender: ChildButton) {
        
        if isButtonStart {
            if let text = inputText.text {
                reverseTextView.text = reverseWordsModule(text: text)
                reverseButton.setTitle("Clear", for: .normal) }
        } else {
            if reverseTextView.text != "" {
                inputText.text = ""
                reverseTextView.text = ""
                reverseButton.configure(isEnabled: false)
                reverseButton.setTitle("REVERSE IT!", for: .normal)
            }
        }
        isButtonStart.toggle()
    }
}



