//
//  ListTableViewController.swift
//  013-私人通讯录
//
//  Created by GenialX on 2/7/19.
//  Copyright © 2019 com.ihuxu.ios.swift.learning.9cc1852b. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    private var personList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData { (list) in
            print(list)
            self.personList += list
            self.tableView.reloadData()
        }
    }
    
    private func loadData(completion: @escaping (_ list: [Person]) -> ()) -> () {
        DispatchQueue.global().async {
            print("Loading data...")
            
            Thread.sleep(forTimeInterval: 1)
            
            var arrayM = [Person]()
            
            for i in 0..<20 {
                let p = Person()
                p.name = "zhangsan - \(i)"
                p.phone = "1860" + String(format: "%06d", arc4random_uniform(1000000))
                p.position = "boss"
                arrayM.append(p)
            }
            
            DispatchQueue.main.async {
                completion(arrayM)
            }
        }
    }
    
    // MARK: - data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone
        return cell
    }
    
    // MARK: - 代理方法
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // segue
        performSegue(withIdentifier: "list2detail", sender: indexPath)
    }
    
    // MARK: - 控制器跳转方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DetailTableViewController
        if let indexPath = sender as? IndexPath {
            vc.person = personList[indexPath.row]
        }
    }
}
