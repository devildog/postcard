//
//  ViewController.swift
//  Postcard2
//
//  Created by Tim Weaver on 9/20/14.
//  Copyright (c) 2014 Burning Ember. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterMessageText: UITextField!
    
    @IBOutlet weak var enterNameText: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender: UIButton) {
        //code will evaluate when we press the button
        messageLabel.hidden=false
        messageLabel.text = enterMessageText.text
        enterMessageText.text=""
        enterMessageText.resignFirstResponder();
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

