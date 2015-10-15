//
//  ViewController.swift
//  testing
//
//  Created by Anil on 15/10/15.
//  Copyright © 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        createButton()
    }
    
    func createButton () {
        let button = UIButton(type: UIButtonType.Custom)
        button.frame = CGRectMake(100, 100, 200, 100)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        button.setBackgroundImage(UIImage(named: "testImage.png"), forState: UIControlState.Normal)
        self.view.addSubview(button)
    }
    
    func buttonPressed(sender: UIButton!) {
        
        guard let image = UIImage(named: "testImage2.png") else {
            print("Image Not Found")
            return
        }
        sender.setBackgroundImage(image, forState: UIControlState.Normal)
    }
}

