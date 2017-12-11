//
//  ViewController.swift
//  MyFirstProgram
//
//  Created by zhouchunjie on 2017/12/9.
//  Copyright © 2017年 leozhou. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    
    @IBOutlet weak var myLabel: NSTextField!
    let colorPanel = NSColorWell()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func chooseColor(_ sender: NSButton) {
        colorPanel.activate(true)
        colorPanel.action = #selector(changeColor(_:))
    }
    
    override func changeColor(_ sender: Any?) {
        myLabel.textColor = colorPanel.color
    }
}

