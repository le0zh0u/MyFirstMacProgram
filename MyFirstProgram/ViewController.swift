//
//  ViewController.swift
//  MyFirstProgram
//
//  Created by zhouchunjie on 2017/12/9.
//  Copyright © 2017年 leozhou. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var popUpChoice: NSPopUpButton!
    @IBOutlet weak var textBox: NSTextField!
    @IBOutlet weak var labelResult: NSTextField!
    @IBOutlet weak var numberFormat: NumberFormatter!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func showResults(_ sender: NSButton) {
        if popUpChoice.titleOfSelectedItem! == "None" {
            numberFormat.numberStyle = NumberFormatter.Style.none
        } else if popUpChoice.titleOfSelectedItem! == "Decimal" {
            numberFormat.numberStyle = NumberFormatter.Style.decimal
        } else if popUpChoice.titleOfSelectedItem! == "Currency" {
            numberFormat.numberStyle = NumberFormatter.Style.currency
        } else if popUpChoice.titleOfSelectedItem! == "Percent" {
            numberFormat.numberStyle = NumberFormatter.Style.percent
        } else if popUpChoice.titleOfSelectedItem! == "Scientific" { numberFormat.numberStyle = NumberFormatter.Style.scientific
        } else if popUpChoice.titleOfSelectedItem! == "Spell Out" { numberFormat.numberStyle = NumberFormatter.Style.spellOut
        }
        labelResult.stringValue = String(stringInterpolationSegment:
            textBox.doubleValue)
    }
}

