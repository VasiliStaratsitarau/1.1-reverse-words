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
           reverseButton.buttonEnable()
        if inputText.text == "" {
           reverseButton.buttonDisable()
        }
    }
// ------------- reverseButton func include switch with two cases -----------------------
    var buttonCounter = 0
    @IBAction func reverseButton(_ sender: ChildButton) {
        buttonCounter += 1
        switch buttonCounter {
        case 1:
            if let text = inputText.text {
                reverseTextView.text = reverseWordsModule(text: text)
                reverseButton.setTitle("Clear", for: .normal)
            }
        case 2:
            if reverseTextView.text != "" {
                inputText.text = ""
                reverseTextView.text = ""
                reverseButton.buttonDisable()
                reverseButton.setTitle("REVERSE IT!", for: .normal)
                buttonCounter = 0
            }
        default: break
        }
    }
}



