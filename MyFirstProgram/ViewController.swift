//
//  ViewController.swift
//  MyFirstProgram
//
//  Created by zhouchunjie on 2017/12/9.
//  Copyright © 2017年 leozhou. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func openPanel(_ sender: NSButton) {
        let myOpen = NSOpenPanel()
        myOpen.canChooseFiles = true
        myOpen.canChooseDirectories = true
        myOpen.allowsMultipleSelection = true
        myOpen.begin { (result) -> Void in
            if result == NSFileHandlingPanelOKButton {
                print (myOpen.urls)
            }
        }
    }
    
    @IBAction func savePanel(_ sender: NSButtonCell) {
        let mySave = NSSavePanel()
        mySave.title = "Save a File Here"
        mySave.prompt = "Save Me"
        
        mySave.begin { (result) -> Void in
            if result == NSFileHandlingPanelOKButton {
                print (mySave.url!)
                print (mySave.nameFieldStringValue)
            }
        }
    }
}

