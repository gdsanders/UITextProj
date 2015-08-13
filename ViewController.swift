//
//  ViewController.swift
//  UITextProj
//
//  Created by G.D. Sanders on 8/12/15.
//  Copyright © 2015 DigitalEquity, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var borderLabel: UILabel!
    
    @IBOutlet weak var showMessageButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessageButtonPressed(sender: UIButton) {
        textField.textColor = UIColor.blueColor()
        textField.textAlignment = NSTextAlignment.Center
        
        var currentBorderStyle: String = "Default"
        
        if textField.borderStyle == UITextBorderStyle.None {
            textField.borderStyle = UITextBorderStyle.Line
            currentBorderStyle = "Line"
        }
        else if textField.borderStyle == UITextBorderStyle.Line {
            textField.borderStyle = UITextBorderStyle.Bezel
            currentBorderStyle = "Bezel"
        }
        else if textField.borderStyle == UITextBorderStyle.Bezel {
            textField.borderStyle = UITextBorderStyle.RoundedRect
            currentBorderStyle = "RoundedRect"
        }
        else if textField.borderStyle == UITextBorderStyle.RoundedRect {
            textField.borderStyle = UITextBorderStyle.None
            currentBorderStyle = "None"
        }
        
        messageLabel.text = "Hello \(textField.text!). Nice to meet you."
        borderLabel.text = "Border style: \(currentBorderStyle)."
   
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    
}