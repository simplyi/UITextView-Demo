//
//  ViewController.swift
//  UITextViewDemo
//
//  Created by Sergey Kargopolov on 2015-08-29.
//  Copyright © 2015 Sergey Kargopolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!

    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveButtonTapped(sender: AnyObject) {
        
        let userFirstName = firstNameTextField.text
        let userLastName = lastNameTextField.text
        let userBio = myTextView.text
        
        print("User first name: \(userFirstName)")
        print("User last name: \(userLastName)")
        print("User bio \(userBio)")
    }

    @IBAction func editBioButtonTapped(sender: AnyObject) {
        
        let editModeView = self.storyboard?.instantiateViewControllerWithIdentifier("EditModeViewController") as! EditModeViewController
        
        editModeView.opener = self
        editModeView.previewModeText = myTextView.text
        
        let editModeViewNav = UINavigationController(rootViewController: editModeView)
        
        self.presentViewController(editModeViewNav, animated: true, completion: nil)
        
        
        
    }
}

