//
//  ViewController.swift
//  MyFirstProgram
//
//  Created by zhouchunjie on 2017/12/9.
//  Copyright © 2017年 leozhou. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var sheriffHitPoints: NSTextField!
    @IBOutlet weak var outlawHitPoints: NSTextField!
    
    var sheriff = Person ()
    var outlaw = Person ()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sheriffHitPoints.integerValue = sheriff.hitPoints
        outlawHitPoints.integerValue = outlaw.hitPoints
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
//    func  applicationDidFinishLaunching(aNotification: NSNotification){
//        //Insert code here to initialize your application
//        
//    }
    
    @IBAction func shootButton(_ sender: NSButton) {
        if sender.tag == 0 {
            //Sheriff shooting
            outlaw.hitPoints -= sheriff.shoot()
        }else {
            sheriff.hitPoints -= outlaw.shoot()
        }
        
        sheriffHitPoints.integerValue = sheriff.hitPoints
        outlawHitPoints.integerValue = outlaw.hitPoints
        
        if sheriffHitPoints.integerValue <= 0 {
            let myAlert = NSAlert()
            myAlert.messageText = "The sheriff died"
            myAlert.runModal()
        }else if outlawHitPoints.integerValue <= 0 {
            let myAlert = NSAlert()
            myAlert.messageText = "The outlaw died"
            myAlert.runModal()
        }
    }

}

