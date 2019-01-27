//
//  ViewController.swift
//  002-函数的定义
//
//  Created by GenialX on 1/27/19.
//  Copyright © 2019 com.ihuxu.ios.swift.learning.9cc1852b. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(sum3(y: 30))
        
        demo1()
        demo2()
        demo3()
    }
    
    /// MARK: 无返回值
    func demo1() {
        print("haha")
    }
    
    func demo2() -> () {
        print("hehe")
    }
    
    func demo3() -> Void {
        print("xixi")
    }
    
    /// MARK: 默认值
    /// 通过设置函数的默认值，在调用的时候，可以任意组合实参的形式，而不用定义多个型参格式的函数
    func sum3(x: Int = 1, y: Int) -> Int {
        return x + y
    }
    
    /// MARK: 省略外部参数使用`_`，使忽略型参的名字
    func sum (_ x: Int, num2 y: Int) -> Int {
        return x + y
    }
    
    /// MARK: 外部参数
    /// 在型参前面加一个参数的描述
    func sum (num1 x: Int, num2 y: Int) -> Int {
        return x + y
    }
    
    /// MARK: 函数定义
    /// 格式 函数名（型参列表）-> 返回值类型
    func sum (x: Int, y: Int) -> Int {
        return x + y
    }
}

