//
//  secondController.swift
//  MyFirstProgram
//
//  Created by zhouchunjie on 2017/12/9.
//  Copyright © 2017年 leozhou. All rights reserved.
//

import Cocoa

class secondController: NSViewController {

    @IBOutlet weak var labelName: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    @IBAction func changeLabel(_ sender: NSButton) {
        labelName.stringValue = "Button clicked"
    }
    
}
