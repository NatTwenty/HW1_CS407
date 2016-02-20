//
//  ViewController.swift
//  HW1
//
//  Created by Dylan Homuth on 2/18/16.
//  Copyright © 2016 Dylan Homuth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var toTwo: UIButton!
    @IBOutlet weak var awnser1: UITextField!
    @IBOutlet weak var imageQ: UIImageView!
    @IBOutlet weak var imageQuestion: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //awnser1.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func toTwo(sender: AnyObject) {
        self.performSegueWithIdentifier("toTwo", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "toTwo") {
            let vc:SecondView = segue.destinationViewController as! SecondView
            vc.firstValue = awnser1.text!
        }
    }

}

