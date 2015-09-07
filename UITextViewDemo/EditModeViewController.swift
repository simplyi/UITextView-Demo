//
//  EditModeViewController.swift
//  UITextViewDemo
//
//  Created by Sergey Kargopolov on 2015-08-29.
//  Copyright © 2015 Sergey Kargopolov. All rights reserved.
//

import UIKit

class EditModeViewController: UIViewController {

    weak var opener:ViewController?
    var previewModeText:String?
    
    @IBOutlet weak var editModeTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        editModeTextView.text = previewModeText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func doneButtonTapped(sender: AnyObject) {
        opener!.myTextView.text = editModeTextView.text
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
