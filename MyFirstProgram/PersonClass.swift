//
//  PersonClass.swift
//  MyFirstProgram
//
//  Created by zhouchunjie on 2017/12/9.
//  Copyright © 2017年 leozhou. All rights reserved.
//

import Foundation

class Person{
    var hitPoints = 10
    func shoot () -> Int {
        let odds = 1 + Int(arc4random_uniform(3))
        if odds == 3 {
            //Hit, randomly determine damage from 1..3
            return 1 + Int(arc4random_uniform(3))
        }else {
            return 0 //Missed
        }
    }
}
