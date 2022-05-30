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
    //----------- 1.3 ----------------------------
    @IBOutlet weak var ignoreTextField: UITextField!
    @IBOutlet weak var modeSelector: UISegmentedControl!
    //----------- 1.3 ----------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ignoreTextField.isHidden = true
        inputText.delegate = self
        inputText.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
        modeSelector.addTarget(self, action: #selector(modeStatus(_:)), for: .valueChanged)
        inputText.accessibilityIdentifier = "Input"
        reverseTextView.accessibilityIdentifier = "Output"
    }
    
    
    // ------------- waiting text in textfield and acrivate Button --------------------------
    
    
    @objc func textChanged(_ textField: UITextField) {
        reverseButton.configure(isEnabled: { inputText.text != "" }())
    
        
    }
    
    @objc func modeStatus(_ sender: UISegmentedControl) {
        if modeSelector.selectedSegmentIndex == 0 {
            ignoreTextField.isHidden = true
        } else if modeSelector.selectedSegmentIndex == 1 {
            ignoreTextField.isHidden = false
        }
            }
        
    
    
    
    
    // ------------- reverseButton func include switch with two cases -----------------------
    
    var isButtonStart = true
    
    @IBAction func reverseButton(_ sender: ChildButton) {
        
        if isButtonStart {
            if let text = inputText.text {
                reverseButton.accessibilityIdentifier = "Clear"
                reverseTextView.text = reverseWordsModule(text: text)
                reverseButton.setTitle("Clear", for: .normal) }
        } else {
            if reverseTextView.text != "" {
                reverseButton.accessibilityIdentifier = "Reverse"
                inputText.text = ""
                reverseTextView.text = ""
                reverseButton.configure(isEnabled: false)
                reverseButton.setTitle("REVERSE IT!", for: .normal)
            }
        }
        isButtonStart.toggle()
    }
}

extension ViewController {
    func textFieldShouldReturn(_ inputText: UITextField) -> Bool {
        inputText.resignFirstResponder()
        return true
    }
}


