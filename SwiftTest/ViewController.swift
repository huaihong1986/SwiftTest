//
//  ViewController.swift
//  SwiftTest
//
//  Created by Hu Aihong on 15-9-16.
//  Copyright (c) 2015年 ChinaCloud. All rights reserved.
//
import UIKit

class ViewController: UIViewController,UIAlertViewDelegate {
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.initialize()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func initialize() {
        let label = UILabel(frame:CGRect(origin:CGPointMake(10.0,50),size:CGSizeMake(150,50 )))
        label.text = "This is a Label"
        self.view.addSubview(label)
        let btn = UIButton(frame:CGRect(origin: CGPointMake(10.0, 110.0), size: CGSizeMake(150, 50)))
        btn.setTitle("TestAlert", forState: UIControlState.Normal)
        btn.backgroundColor = UIColor.redColor()
        btn.addTarget(self, action:"buttonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        
    }
    func buttonClick(sender:UIButton!)//default public
    {
        var alert = UIAlertView()
        alert.title = "alert"
        alert.delegate = self
        alert.addButtonWithTitle("cancel")
        alert.message = "this is an alert"
        alert.show()
    }
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
        println("buttonIndex\(buttonIndex)")
        
    }
}



