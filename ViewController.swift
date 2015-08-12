//
//  ViewController.swift
//  UITextProj
//
//  Created by G.D. Sanders on 8/12/15.
//  Copyright © 2015 DigitalEquity, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var borderLabel: UILabel!
    
    @IBOutlet weak var showMessageButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessageButtonPressed(sender: UIButton) {
        textField.textColor = UIColor.blueColor()
        textField.textAlignment = NSTextAlignment.Center
    }

}

