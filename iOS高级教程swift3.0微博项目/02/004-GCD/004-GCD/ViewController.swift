//
//  ViewController.swift
//  004-GCD
//
//  Created by GenialX on 1/27/19.
//  Copyright © 2019 com.ihuxu.ios.swift.learning.9cc1852b. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        
        loadData{ (result: [String]) in
            print(result)
        }
    }

    func loadData(completion: @escaping (_ result: [String]) -> ()) {
        DispatchQueue.global().async {
            print("耗时操作 \(Thread.current)")
            Thread.sleep(forTimeInterval: 1.0)
            
            let json = ["头条", "八卦", "出大事儿"]
            
            // 主队列回调
            DispatchQueue.main.async {
                print("主线程更新 UI \(Thread.current)")
                completion(json)
            }
        }
    }

}

