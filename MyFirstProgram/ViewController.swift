//
//  ViewController.swift
//  MyFirstProgram
//
//  Created by zhouchunjie on 2017/12/9.
//  Copyright © 2017年 leozhou. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSComboBoxDataSource {
    
    @IBOutlet weak var myCombo: NSComboBox!
    @IBOutlet weak var comboResult: NSTextField!
    
    let myArray = ["Sandwich", "Chips", "Soda", "Salad"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.myCombo.usesDataSource = true
        self.myCombo.dataSource = self
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func showResult(_ sender: NSButton) {
        comboResult.stringValue = myCombo.stringValue
    }
    
    func numberOfItems(in comboBox: NSComboBox) -> Int {
        return myArray.count
    }
    
    func  comboBox(_ comboBox: NSComboBox, objectValueForItemAt index: Int) -> Any? {
        return myArray[index]
    }
}

