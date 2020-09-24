//
//  ViewController.swift
//  StringfunApp
//
//  Created by renji on 24/09/20.
//  Copyright © 2020 renji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textViews: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViews.isEditable = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var lastLetter: String = ""
    @IBAction func enterButton(_ sender: UIButton) {
        
        let mText: String = textField.text!
        textViews.text = "String: \(mText ) \nReverse: \(reverse(mText))\nFrist Letter:  \(mText.characters.first ?? "N")"
        if isPalindrome(inputString: mText){
            textViews.text! += "\nLast letter:  \(mText.characters.last ?? "N") \nIt is palindrome"
        }else{
            textViews.text! += "\nLast letter:  \(mText.characters.last ?? "N")\nIt is not palindrome"
        }
        textViews.text! += "\ncharacter count \(mText.characters.count)"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func reverse(_ s: String) -> String {
        var str = ""
        for character in s.characters {
            str = "\(character)" + str
        }
        return str
    }
    
    func isPalindrome(inputString: String) -> Bool {
        if reverse(inputString) != inputString {
            return false
        }
        return true
    }


}
extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
}
}

