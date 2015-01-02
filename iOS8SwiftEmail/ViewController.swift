//
//  ViewController.swift
//  iOS8SwiftEmail
//
//  Created by Kenneth Wilcox on 1/2/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {

  @IBOutlet var subject: UITextField!
  @IBOutlet var body: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    subject.delegate = self
    body.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func sendMail(sender: AnyObject) {
  }

}

