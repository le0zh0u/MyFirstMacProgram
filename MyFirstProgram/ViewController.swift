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
    @IBAction func shouAlert(_ sender: NSButton) {
        let myAlert = NSAlert()
        myAlert.messageText = "Warning!"
        myAlert.informativeText = "Zombies approaching"
        myAlert.alertStyle = NSAlertStyle.critical
        myAlert.showsSuppressionButton = true
        myAlert.suppressionButton?.title = "Stop scaring me"
        
        myAlert.addButton(withTitle: "Ignore it")
        myAlert.addButton(withTitle: "Run")
        myAlert.addButton(withTitle: "panic")
        myAlert.addButton(withTitle: "Do nothing")
        
//        let choice = myAlert.runModal()
//        
//        switch choice {
//        case NSAlertFirstButtonReturn:
//            print ("User clicked Ignore it")
//        case NSAlertSecondButtonReturn:
//            print ("User clicked Run")
//        case NSAlertThirdButtonReturn:
//            print ("User clicked Panic")
//        case NSAlertThirdButtonReturn + 1:
//            print ("User clicked Do nothing")
//        default: break
//        }
//        if myAlert.suppressionButton!.state == 1 {
//            print ("Checked")
//        } else {
//            print ("Not checked")
//        }
        
        let myCode = { (choice:NSModalResponse) -> Void in
            switch choice {
            case NSAlertFirstButtonReturn:
                print ("User clicked Ignore it")
            case NSAlertSecondButtonReturn:
                print ("User clicked Run")
            case NSAlertThirdButtonReturn:
                print ("User clicked Panic")
            case NSAlertThirdButtonReturn + 1:
                print ("User clicked Do nothing")
            default: break
            }
            if myAlert.suppressionButton!.state == 1 {
                print ("Checked")
            } else {
                print ("Not checked")
            } }
        myAlert.beginSheetModal(for: NSApp.keyWindow!, completionHandler: myCode)
    }
    
}

