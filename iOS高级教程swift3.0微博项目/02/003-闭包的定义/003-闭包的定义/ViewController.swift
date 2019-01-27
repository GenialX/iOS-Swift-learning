//
//  ViewController.swift
//  003-闭包的定义
//
//  Created by GenialX on 1/27/19.
//  Copyright © 2019 com.ihuxu.ios.swift.learning.9cc1852b. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 1. 最简单的闭包
        // () -> () 没有参数，没有返回值的函数
        let b1 = {
            print("hello")
        }
        // 执行
        b1()
        
        // 2. 带参数的闭包
        // 闭包中，参数，返回值，实现代码都是写在花括号中
        // { 型参列表 -> 返回值类型 in 实现代码 }
        // 需要使用关键字 `in` 分割定义与实现
        let b2 = { (x: Int) -> () in
            print(x)
        }
        b2(100)
    }
}

