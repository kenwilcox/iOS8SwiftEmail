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
    var mail = MFMailComposeViewController()
    mail.mailComposeDelegate = self
    mail.setSubject(subject.text)
    mail.setMessageBody(body.text, isHTML: true)
    
    presentViewController(mail, animated: true, completion: nil)
  }

  // MFMailComposeViewControllerDelegate
  func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
    dismissViewControllerAnimated(true, completion: nil)
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
    
    body.text = textView.text
    if text == "\n" {
      textView.resignFirstResponder()
      return false
    }
    return true
  }
}

