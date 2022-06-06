//
//  ViewController.swift
//  1.1-reverse-words
//
//  Created by Vasili Staratsitarau on 12/05/2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var reverseTextView: UILabel!
    @IBOutlet weak var reverseButton: ChildButton!
    @IBOutlet weak var ignoreTextField: UITextField!
    @IBOutlet weak var modeSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    // ------------- waiting text in textfield and acrivate Button --------------------------
    @objc func inputText(_ inputText: UITextField) {
        reverseButton.configure(isEnabled: { inputText.text != "" }())
    }
    
    @objc func ignoreTextField(_ ignoreTextField: UITextField) {
        reverseButton.configure(isEnabled: { ignoreTextField.text != "" }())
    }
    //--------------- segment control mode ---------------------------------------------------
    @objc func modeStatus(_ sender: UISegmentedControl) {
        if modeSelector.selectedSegmentIndex == 0 {
            ignoreTextField.isHidden = true
            reverseTextView.text = ""
            ignoreTextField.text = ""
            reverseButton.configure(isEnabled: { inputText.text != "" }())
        } else if modeSelector.selectedSegmentIndex == 1 {
            ignoreTextField.isHidden = false
            reverseTextView.text = ""
            reverseButton.configure(isEnabled: { ignoreTextField.text != "" }())
        }
    }
    // ------------- reverseButton func include switch with two cases -----------------------
    
    @IBAction func reverseButton(_ sender: ChildButton) {
        
        let textIgnore = ignoreTextField.text ?? ""
        let textInput = inputText.text ?? ""
        
        let reverseWords = textInput.split(separator: " ")
        
        for i in 0..<reverseWords.count {
            let ready = reverse(word: String(reverseWords[i]), ignoreSet: CharacterSet(charactersIn: textIgnore))
            reverseTextView.text?.append(ready + " ")
        }
    }
    
    func setup() {
        ignoreTextField.isHidden = true
        ignoreTextField.delegate = self
        ignoreTextField.accessibilityIdentifier = "CustomText"
        ignoreTextField.addTarget(self, action: #selector(ignoreTextField(_:)), for: .editingChanged)
        inputText.delegate = self
        inputText.addTarget(self, action: #selector(inputText(_:)), for: .editingChanged)
        inputText.accessibilityIdentifier = "Input"
        modeSelector.addTarget(self, action: #selector(modeStatus(_:)), for: .valueChanged)
        reverseTextView.accessibilityIdentifier = "Output"
    }
}





