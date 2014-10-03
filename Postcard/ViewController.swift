//
//  ViewController.swift
//  Postcard
//
//  Created by Brandon Robbins on 10/2/14.
//  Copyright (c) 2014 Brandon Robbins. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var lblNameLabel: UILabel!
    @IBOutlet weak var lblMessageLabel: UILabel!

    @IBOutlet weak var txtNameTextBox: UITextField!
    @IBOutlet weak var txtMessageTextBox: UITextField!
    
    @IBOutlet weak var btnSendMail: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnSendMessage(sender: UIButton)
    {
        lblNameLabel.text = txtNameTextBox.text
        txtNameTextBox.text = ""
        lblNameLabel.textColor = UIColor.blueColor()
        
        lblMessageLabel.text = txtMessageTextBox.text
        txtMessageTextBox.text = ""
        lblMessageLabel.textColor = UIColor.redColor()
        
        lblMessageLabel.hidden = false
        lblNameLabel.hidden = false
        
        self.view.endEditing(true)
        
        btnSendMail.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}