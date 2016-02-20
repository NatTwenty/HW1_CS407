//
//  SecondView.swift
//  HW1
//
//  Created by Dylan Homuth on 2/19/16.
//  Copyright © 2016 Dylan Homuth. All rights reserved.
//

import UIKit

class SecondView: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var awnser2: UITextField!
    @IBOutlet weak var toThree: UIButton!
    
    var firstValue: NSString = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //awnser1.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toThree(sender: AnyObject) {
        //self.performSegueWithIdentifier("toThree", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "toThree") {
            let vc:ThirdView = segue.destinationViewController as! ThirdView
            vc.secondValue = awnser2.text!
            vc.firstVar = firstValue
        }
    }
}
