//
//  ThirdView.swift
//  HW1
//
//  Created by Dylan Homuth on 2/19/16.
//  Copyright © 2016 Dylan Homuth. All rights reserved.
//

import UIKit

class ThirdView: UIViewController, UITextFieldDelegate{
    var secondValue: NSString = ""
    var firstVar: NSString = ""
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var score: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        update()
        //awnser1.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func update () {
        dispatch_async(dispatch_get_main_queue(), {
            self.label1.text = self.secondValue as String
            self.label2.text = self.firstVar as String
            var foo = 0
            if self.firstVar == "blue"{
                foo++
            }
            if self.secondValue == "4" {
                foo++
            }
            self.score.text = String(foo)
        })
    }
    @IBAction func restart(sender: AnyObject) {
        for (var i = 0; i < self.navigationController?.viewControllers.count; i++) {
            if(self.navigationController?.viewControllers[i].isKindOfClass(ViewController) == true) {
                
                self.navigationController?.popToViewController(self.navigationController!.viewControllers[i] as! ViewController, animated: true)
                
                break;
            }
        }
    }
}
