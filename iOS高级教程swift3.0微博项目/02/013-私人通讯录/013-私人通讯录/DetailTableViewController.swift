//
//  DetailTableViewController.swift
//  013-私人通讯录
//
//  Created by GenialX on 2/7/19.
//  Copyright © 2019 com.ihuxu.ios.swift.learning.9cc1852b. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    @IBOutlet weak var positionText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var phoneText: UITextField!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if person != nil {
            nameText.text = person?.name
            phoneText.text = person?.phone
            positionText.text = person?.position
        }
    }
    
    @IBAction func savePerson(_ sender: Any) {
    }
}
