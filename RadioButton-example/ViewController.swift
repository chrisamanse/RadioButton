//
//  ViewController.swift
//  RadioButton-example
//
//  Created by Joe Amanse on 20/11/2015.
//  Copyright © 2015 Joe Christopher Paul Amanse. All rights reserved.
//

import UIKit
import RadioButton

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressButton(sender: RadioButton) {
        sender.selected = !sender.selected
    }
}

