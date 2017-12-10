//
//  ViewController.swift
//  MyFirstProgram
//
//  Created by zhouchunjie on 2017/12/9.
//  Copyright © 2017年 leozhou. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var searchBox: NSSearchField!
    @IBOutlet weak var historyBox: NSTextField!
    
    @IBOutlet weak var tokenBox: NSTokenField!
    @IBOutlet weak var tokenResult: NSTextField!
    
    @IBOutlet weak var secureBox: NSSecureTextField!
    @IBOutlet weak var secureResults: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func showHistory(_ sender: NSButton) {
        historyBox.stringValue = String(stringInterpolationSegment: searchBox.recentSearches)
    }
    @IBAction func showToken(_ sender: NSButton) {
        tokenResult.stringValue = tokenBox.stringValue
    }
    @IBAction func showSecret(_ sender: NSButton) {
        secureResults.stringValue = secureBox.stringValue
    }
}

