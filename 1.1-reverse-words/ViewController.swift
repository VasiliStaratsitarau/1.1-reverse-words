//
//  ViewController.swift
//  1.1-reverse-words
//
//  Created by Vasili Staratsitarau on 12/05/2022.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var reverseTextView: UILabel!
    @IBOutlet weak var reverseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputText.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
        reverseButton.layer.cornerRadius = 14
// ------------- Button .disabled as default --------------------------------------------
        reverseButton.isEnabled = false
        reverseButton.backgroundColor = nonActiveButtonColor
        reverseButton.setTitleColor(UIColor.white, for: .normal)
    }
// ------------- waiting text in textfield and acrivate Button --------------------------
    @objc func textChanged(_ textField: UITextField) {
        reverseButton.backgroundColor = activeButtonColor
        reverseButton.isEnabled = true
    }
// ------------- reverseButton func include switch with two cases -----------------------
    var counter = 0
    
    @IBAction func reverseButton(_ sender: UIButton) {
        counter += 1
        switch counter {
// ------------- reverse text and rename button on "Clear" ------------------------------
        case 1:
            if let textIsNotEmpty = inputText.text {
                reverseTextView.text = String(textIsNotEmpty.reversed())
                reverseButton.setTitle("Clear", for: .normal)
            }
// ------------- back to default position -----------------------------------------------
        case 2:
            if reverseTextView.text != "" {
                reverseButton.setTitle("REVERSE IT!", for: .normal)
                inputText.text = ""
                reverseTextView.text = ""
                reverseButton.isEnabled = false
                reverseButton.backgroundColor = nonActiveButtonColor
                reverseButton.setTitleColor(UIColor.white, for: .normal)
            }
            counter = 0
        default:
            break
        }
    }
}

// ---------------- HEX to UIColor decoder ---- thx to www.hackingwithswift.com ----------

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}

// -------------------- Colors for button ---------------------------------------------------

let nonActiveButtonColor = UIColor(hex: "#66afffff")
let activeButtonColor = UIColor(hex: "#007affff")


